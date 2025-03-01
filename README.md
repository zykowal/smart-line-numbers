# Smart Line Numbers

**smart-line-numbers** is a lightweight plugin designed for Neovim that intelligently toggles line number display modes to enhance your code editing experience. It shows absolute line numbers in insert mode for easy cursor positioning, and relative line numbers in other modes for quick navigation and operations.

## Features

- **Smart Mode Switching**:
  - Insert Mode: Displays absolute line numbers.
  - Normal Mode: Displays relative line numbers.

- **Plugin-Friendly**:
  - Automatically excludes plugin interfaces (e.g., NvimTree, Telescope) to avoid interference.
  - Supports user-customizable exclusion lists for flexible adaptation to more plugins.

- **Lightweight and Efficient**:
  - Built using Neovim's Lua API for excellent performance.
  - Relies solely on built-in features, with no additional dependencies.

## Installation

Install using **lazy.nvim**:
```lua
return {
  "zykowal/smart-line-numbers",
  config = function()
    require("smart_line_numbers").setup({
      excluded_ft = {}, -- Custom exclusion list
    })
  end,
}
```

## Why Choose Smart Line Numbers?

- **Focus on Editing Experience**: Intelligently switches line number display modes to balance positioning and navigation needs.
- **Highly Customizable**: Supports user-defined exclusion lists to adapt to various plugins and workflows.
- **Lightweight and Non-Intrusive**: Built on Neovim's native functionality, requiring no additional dependencies—ready to use out of the box.
