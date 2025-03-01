# Smart Line Numbers

**smart-line-numbers** 是一个专为 Neovim 设计的轻量级插件，旨在智能切换行号显示方式，提升代码编辑体验。它会在插入模式下显示绝对行号，便于光标定位；而在其他模式下显示相对行号，方便快速导航和操作。

## 特性

- 智能模式切换：
  - 插入模式：显示绝对行号
  - 普通模式：显示相对行号

- 插件友好：
  - 自动排除插件界面（如 NvimTree、Telescope 等），避免干扰。
  - 支持用户自定义排除列表，灵活适配更多插件。

- 轻量高效：
  - 基于 Neovim 的 Lua API 实现，性能优异。
  - 仅依赖内置功能，无需额外依赖。

## 安装

使用 **lazy.nvim** 安装：
```lua
return {
  "zykowal/smart-line-numbers",
  config = function()
    require("smart_line_numbers").setup({
      excluded_ft = {}, -- 自定义排除项
    })
  end,
}
```

## 为什么选择 Smart Line Numbers？

- 专注编辑体验：通过智能切换行号显示方式，兼顾定位与导航需求。
- 高度可定制：支持用户自定义排除列表，适配各种插件和工作流。
- 轻量无侵入：基于 Neovim 原生功能，无需额外依赖，开箱即用。
