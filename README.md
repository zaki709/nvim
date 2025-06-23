# zaki-nvim

![LazyVim](image/zaki_dashboard_header.png)

A personalized Neovim configuration built on **LazyVim** with Japanese language support, modern development tools, and AI-assisted coding capabilities.

## ✨ Features

- 🎨 **Cyberdream Theme** with light/dark mode toggle (`<leader>ct`)
- 🇯🇵 **Japanese Language Support** with UTF-8 optimization
- 🤖 **AI Assistance** with GitHub Copilot integration
- ⚡ **High Performance** with optimized lazy loading
- 🔧 **Modern LSP Setup** with Mason and comprehensive language support
- 📁 **Enhanced File Management** with Neo-tree and advanced Git integration
- ⌨️ **Custom Keybindings** including `jj` for quick escape

## 🚀 Quick Start

### Prerequisites
- Neovim 0.9.0+
- Git
- Terminal with true color support
- Nerd Font (recommended)

### Installation
```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this configuration
git clone <this-repo> ~/.config/nvim

# Start Neovim (plugins will auto-install)
nvim
```

## 📚 Documentation

- **[English Manual](docs/manual-en.md)** - Complete user guide with setup and usage
- **[日本語マニュアル](docs/manual-ja.md)** - 完全な日本語ユーザーガイド
- **[Key Bindings Reference](docs/manual.md)** - Comprehensive keybinding list
- **[CLAUDE.md](CLAUDE.md)** - Technical reference for Claude Code

## 🎯 Key Bindings

### Essential Shortcuts
| Key | Action |
|-----|--------|
| `jj` | Escape insert mode |
| `<leader>ct` | Toggle light/dark theme |
| `<leader><space>` | Find files |
| `<leader>gg` | Open Lazygit |
| `<leader>cp` | Copy file path |

### Theme Toggle
The cyberdream theme supports seamless switching between light and dark modes:
- **Dark Mode**: White text on dark background
- **Light Mode**: Dark text on light background

## 🔧 Plugin Categories

### 📦 Package Manager
- [LazyVim](https://www.lazyvim.org/) - Modern Neovim configuration framework

### 🎨 UI & Appearance
- [cyberdream.nvim](https://github.com/scottmckendry/cyberdream.nvim) - Futuristic theme with light/dark variants
- [alpha-nvim](https://github.com/goolord/alpha-nvim) - Custom dashboard with zaki header
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status line with Git and LSP info
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - Modern file explorer
- [hlchunk.nvim](https://github.com/shellRaining/hlchunk.nvim) - Visual indentation guides
- [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) - CSS color highlighting

### ⌨️ Editor Enhancements
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) - Smart commenting (`gcc`, `gc`)
- [treesj](https://github.com/Wansmer/treesj) - Code splitting/joining (`<space>m`)
- [copy-file-path.nvim](https://github.com/h3pei/copy-file-path.nvim) - Quick path copying
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) - Enhanced terminal integration
- [glance.nvim](https://github.com/dnlhc/glance.nvim) - LSP references preview

### 🔧 LSP & Development
- [mason.nvim](https://github.com/williamboman/mason.nvim) - Language server installer
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configurations
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Auto-completion engine
- [conform.nvim](https://github.com/stevearc/conform.nvim) - Code formatting
- [nvim-lint](https://github.com/mfussenegger/nvim-lint) - Asynchronous linting

### 📌 Git Integration
- [gitlinker.nvim](https://github.com/linrongbin16/gitlinker.nvim) - Generate GitHub links
- [diffview.nvim](https://github.com/sindrets/diffview.nvim) - Enhanced diff viewing
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git decorations and utilities

### 🤖 AI Assistance
- [copilot.lua](https://github.com/zbirenbaum/copilot.lua) - GitHub Copilot integration (Active)
- [avante.nvim](https://github.com/yetone/avante.nvim) - Multi-model AI assistant (Disabled for performance)

## 🌏 Japanese Language Support

This configuration is optimized for Japanese development:
- **UTF-8 Encoding**: Proper Japanese text handling
- **Copilot Integration**: Japanese language support enabled
- **Input Methods**: Compatible with system IME
- **Mixed Language**: Optimized for Japanese/English codebases

## ⚡ Performance Optimizations

- **Lazy Loading**: Plugins load only when needed
- **Disabled Runtime Plugins**: Removed unnecessary Vim plugins
- **Optimized Startup**: Fast boot with selective plugin activation
- **Cache Support**: Optional caching for cyberdream theme

## 🎛️ Configuration Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/
│   ├── config/           # Core configuration
│   │   ├── keymaps.lua  # Custom key bindings
│   │   ├── options.lua  # Neovim options
│   │   ├── lazy.lua     # Plugin manager setup
│   │   └── ...
│   └── plugins/          # Individual plugin configs
│       ├── colorscheme.lua
│       ├── copilot.lua
│       ├── avante.lua   # (disabled)
│       └── ...
├── docs/                 # Documentation
└── image/               # Assets
```

## 🔄 Recent Updates

- ✅ **Fixed Avante Configuration** - Updated to new providers structure
- ✅ **Enhanced Theme Toggle** - Improved cyberdream light/dark switching
- ✅ **Performance Boost** - Disabled Avante while preserving configuration
- ✅ **Documentation** - Added comprehensive English/Japanese manuals
- ✅ **Claude Code Support** - Added CLAUDE.md for AI assistant integration

## 🤝 AI Integration Status

### Active: GitHub Copilot
- Real-time code suggestions
- Japanese language support
- Seamless integration with completion engine

### Preserved: Avante AI Assistant
Avante is currently disabled (`enabled = false`) for startup performance but fully configured for easy re-activation:

```lua
-- In lua/plugins/avante.lua
enabled = true,  -- Change to true to re-enable
```

## 🛠️ Customization

### Adding Plugins
Create a new file in `lua/plugins/`:
```lua
return {
  "author/plugin-name",
  config = function()
    -- plugin setup
  end,
}
```

### Custom Keymaps
Add to `lua/config/keymaps.lua`:
```lua
vim.keymap.set("n", "<leader>xx", ":YourCommand<CR>", { desc = "Description" })
```

### Theme Customization
Modify `lua/plugins/colorscheme.lua` for color adjustments.

## 📄 License

This configuration is provided as-is for personal use and customization.

## 🙏 Acknowledgments

- [LazyVim](https://www.lazyvim.org/) for the excellent foundation
- [Cyberdream](https://github.com/scottmckendry/cyberdream.nvim) for the beautiful theme
- All plugin authors for their amazing work
- The Neovim community for continuous innovation
