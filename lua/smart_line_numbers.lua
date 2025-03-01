local M = {}

local default_excluded_ft = {
	"NvimTree",
	"TelescopePrompt",
	"neo-tree",
	"alpha",
	"fugitive",
	"toggleterm",
}

local function get_excluded_ft()
	local user_excluded_ft = M.config and M.config.excluded_ft or {}
	return vim.tbl_deep_extend("force", default_excluded_ft, user_excluded_ft)
end

local function is_normal_buffer()
	if vim.bo.buftype ~= "" then
		return false
	end

	local ft = vim.bo.filetype
	return not vim.tbl_contains(get_excluded_ft(), ft)
end

local function setup_autocmds()
	local group = vim.api.nvim_create_augroup("SmartLineNumbers", { clear = true })

	vim.api.nvim_create_autocmd("InsertEnter", {
		group = group,
		callback = function()
			if is_normal_buffer() then
				vim.opt_local.relativenumber = false
			end
		end,
	})

	vim.api.nvim_create_autocmd("InsertLeave", {
		group = group,
		callback = function()
			if is_normal_buffer() then
				vim.opt_local.relativenumber = true
			end
		end,
	})
end

function M.setup(config)
	M.config = vim.tbl_deep_extend("force", {
		excluded_ft = {},
	}, config or {})

	vim.opt.number = true
	vim.opt.relativenumber = true

	setup_autocmds()
end

return M
