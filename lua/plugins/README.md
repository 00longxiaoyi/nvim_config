# Neovim 插件配置说明

## 快捷键总览

| 快捷键 | 功能 | 插件 |
|--------|------|------|
| `<leader>cp` | 切换 AI Provider (OpenAI/DeepSeek/Ollama) | ChatGPT.nvim |
| `<C-\>` | 打开/关闭浮动终端 | toggleterm.nvim |
| `<CR>` | 确认补全/展开代码片段 | nvim-cmp |
| `<Tab>` | 选择下一个补全项/跳转到下一个片段位置 | nvim-cmp + LuaSnip |
| `<S-Tab>` | 选择上一个补全项/跳转到上一个片段位置 | nvim-cmp + LuaSnip |

### 依赖关系
确保已安装以下外部工具：
- `jq` (用于 JSON 格式化)
- Node.js (用于 LSP 服务器)
- Git (用于 gitsigns)

---

## 插件详细说明

### 主题 & 外观

#### colorschme.lua
- **插件**: [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- **作用**: Tokyo Night 配色主题，提供 storm/night/moon/day 四种风格
- **特性**:
  - 启用透明背景
  - 侧边栏和浮动窗口均为透明
  - 主题风格: storm

#### vinegar.lua
- **插件**: [tpope/vim-vinegar](https://github.com/tpope/vim-vinegar)
- **作用**: 增强 netrw 文件浏览器体验
- **特性**: 延迟加载以提升启动性能

---

### 代码补全

#### nvimcmp.lua
- **插件**: [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- **作用**: 强大的代码自动补全引擎
- **补全源**:
  - LuaSnip 代码片段
  - LSP 语言服务器补全
  - 文件路径补全
  - 缓冲区补全
- **快捷键**:
  - `<CR>`: 确认选中的补全项
  - `<Tab>`: 选择下一项 / 跳转到下一个片段位置
  - `<S-Tab>`: 选择上一项 / 跳转到上一个片段位置

#### blinkcmp.lua
- **插件**: [Ramiell/blink.cmp](https://github.com/Ramiell/blink.cmp)
- **状态**: 已禁用

---

### 代码片段

#### luasnip.lua
- **插件**: [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- **作用**: 强大的代码片段引擎
- **特性**:
  - 支持历史记录
  - 实时更新 (TextChanged 事件)
  - 从 `~/.config/nvim/lua/luaSnip` 加载自定义片段

#### friendly-snippets.lua
- **插件**: [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- **状态**: 已禁用

---

### 语言支持 & LSP

#### lsp.lua
- **插件**: [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- **作用**: LSP 服务器管理器
- **自动安装的 LSP**:
  - vue-language-server (Vue.js)
  - typescript-language-server (TypeScript)
  - vtsls (Vue TypeScript 支持)
  - css-lsp (CSS)

#### vue.lua
- **插件**: Vue.js 开发支持
- **作用**: 完整的 Vue.js 开发环境配置
- **特性**:
  - Treesitter 解析器支持 (Vue + CSS)
  - Volar (Vue Language Server) 集成
  - vtsls TypeScript 支持
  - 与 TypeScript 插件无缝集成

#### tailwind.lua
- **插件**: TailwindCSS LSP 配置
- **作用**: 为 TailwindCSS 提供智能补全和语法支持
- **支持的文件类型**:
  - HTML, CSS, SCSS
  - JavaScript/JSX, TypeScript/TSX
  - Vue, Svelte, Astro

#### tailwind-highlight.lua
- **插件**: [NvChad/nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua)
- **作用**: 实时显示颜色代码预览
- **特性**:
  - 支持 TailwindCSS 颜色类名高亮
  - 支持 HTML, CSS, SCSS, React, TypeScript React

#### tailwind-tools.lua
- **插件**: [luckasRanarison/tailwind-tools.nvim](https://github.com/luckasRanarison/tailwind-tools.nvim)
- **作用**: TailwindCSS 增强工具
- **特性**:
  - 内联颜色显示
  - Prettier 风格格式化
  - 禁用类名隐藏

---

### 代码格式化

#### conform.lua
- **插件**: [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)
- **作用**: 异步代码格式化工具
- **配置的格式化器**:
  - JSON: 使用 `jq` 格式化

---

### Markdown 支持

#### makrdown.lua
- **插件**: [MeanderingProgrammer/render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- **作用**: 增强 Markdown 预览和渲染
- **特性**:
  - 启用标题渲染
  - 启用代码块渲染
  - 禁用 LaTeX 渲染

---

### Git 集成

#### gitsigns.lua
- **插件**: [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- **作用**: Git 变更可视化
- **特性**:
  - 在行号旁显示 Git 状态 (新增/修改/删除)
  - 当前行显示 Git blame 信息 (最后提交者和时间)
  - 自定义 Git 状态符号 (`│`, `_`, `‾`, `~`)

---

### AI 辅助编程

#### ai-code.lua
- **插件**: [jackMort/ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim)
- **作用**: 在 Neovim 中使用 AI 辅助编程
- **支持的 AI 提供商**:
  - OpenAI (GPT-4.1-mini)
  - DeepSeek (deepseek-chat)
  - Ollama (本地运行 qwen2.5-coder:7b)
- **快捷键**:
  - `<leader>cp`: 切换 AI Provider
- **注意**: 包含硬编码的 API Keys，建议改用环境变量

---

### 终端集成

#### toggleterm.lua
- **插件**: [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- **作用**: 浮动终端管理器
- **快捷键**:
  - `<C-\>`: 打开/关闭浮动终端
- **特性**:
  - 浮动窗口模式
  - 双边框样式
  - 5% 透明度
  - 自动隐藏行号

---

### 示例文件

#### example.lua
- **状态**: 已禁用 (return early)
- **作用**: LazyVim 插件配置示例文件，包含各种配置模式的参考

---
