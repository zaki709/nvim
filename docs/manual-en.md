# zaki-nvim User Manual

![LazyVim](../image/zaki_dashboard_header.png)

## Overview

This is a personal Neovim configuration built on **LazyVim** with Japanese language support, modern development tools, and AI-assisted coding capabilities. The configuration focuses on productivity, aesthetics, and seamless development workflow.

## Getting Started

### Prerequisites
- Neovim 0.9.0+
- Git
- A terminal with true color support
- Nerd Font (recommended for icons)

### Installation
1. Backup your existing Neovim configuration
2. Clone this configuration to `~/.config/nvim`
3. Start Neovim - plugins will be automatically installed

## Core Features

### 🎨 Theme System
- **Cyberdream Theme**: Futuristic color scheme with customizable variants
- **Light/Dark Mode Toggle**: Switch between themes with `<leader>ct`
- **Automatic Mode Detection**: Respects system theme preferences

### ⌨️ Custom Keybindings
- **jj**: Quick escape from insert mode
- **Japanese Input Support**: UTF-8 optimized for Japanese development
- **Custom Leader Mappings**: Efficient workflow shortcuts

### 🔧 Development Tools
- **LSP Integration**: Language server support with Mason
- **Auto-completion**: Intelligent code completion with nvim-cmp
- **Git Integration**: Enhanced Git workflow with multiple tools
- **File Explorer**: Neo-tree with modern interface

## Key Bindings Reference

### **Essential Shortcuts**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `jj` | Insert | Escape to normal mode |
| `<leader>ct` | Normal | Toggle light/dark theme |
| `<C-s>` | Normal | Save file |
| `<leader>qq` | Normal | Quit all |

### **Navigation**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<C-h>` | Normal | Go to left window |
| `<C-j>` | Normal | Go to lower window |
| `<C-k>` | Normal | Go to upper window |
| `<C-l>` | Normal | Go to right window |
| `<S-h>` | Normal | Previous buffer |
| `<S-l>` | Normal | Next buffer |

### **File Operations**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader><space>` | Normal | Find files |
| `<leader>ff` | Normal | Find files (root dir) |
| `<leader>fb` | Normal | Find buffers |
| `<leader>fn` | Normal | Create new file |
| `<leader>cp` | Normal | Copy file path |

### **Search and Replace**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader>/` | Normal | Search in project |
| `<leader>sr` | Normal | Search and replace |
| `<leader>sk` | Normal | Search keymaps |

### **Code Navigation**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `gd` | Normal | Go to definition |
| `gr` | Normal | Go to references |
| `K` | Normal | Show hover info |
| `<leader>ca` | Normal | Code actions |
| `<leader>cr` | Normal | Rename symbol |
| `<leader>cf` | Normal | Format code |

### **Git Operations**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader>gg` | Normal | Open Lazygit |
| `<leader>gy` | Normal | Copy git link |
| `<leader>go` | Normal | Open in GitHub |
| `<leader>gb` | Normal | Git blame |
| `]h` / `[h` | Normal | Next/Previous git hunk |

### **Window Management**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader>-` | Normal | Split horizontally |
| `<leader>\|` | Normal | Split vertically |
| `<leader>wd` | Normal | Close window |
| `<C-Up/Down/Left/Right>` | Normal | Resize window |

### **Diagnostics and Errors**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `]d` / `[d` | Normal | Next/Previous diagnostic |
| `]e` / `[e` | Normal | Next/Previous error |
| `<leader>xx` | Normal | Toggle diagnostics |
| `<leader>cd` | Normal | Show diagnostic |

## Plugin Overview

### 🎨 UI Plugins
- **Alpha Dashboard**: Custom startup screen with zaki header
- **Cyberdream Theme**: Main color scheme with light/dark variants
- **Lualine**: Status line with Git and LSP information
- **Neo-tree**: File explorer with Git integration
- **HLChunk**: Visual indentation guides

### ⚡ Editor Enhancements
- **Comment.nvim**: Smart commenting with `gcc` and `gc`
- **TreeSJ**: Code block splitting/joining with `<space>m`
- **Copy File Path**: Quick path copying with `<leader>cp`
- **Flash**: Quick navigation with `s` and `S`

### 🔧 Development Tools
- **Mason**: Language server installer and manager
- **nvim-lspconfig**: Language server configurations
- **nvim-cmp**: Auto-completion engine
- **Copilot**: AI-powered code suggestions
- **Colorizer**: CSS color preview

### 📚 Git Integration
- **GitLinker**: Generate GitHub links with `<leader>gy`
- **Diffview**: Enhanced diff viewing
- **Gitsigns**: Git status in sign column

## AI Assistance

### GitHub Copilot
- **Auto-suggestions**: AI-powered code completion
- **Tab Completion**: Accept suggestions with `<Tab>`
- **Japanese Support**: Optimized for Japanese comments and text

### Avante (Currently Disabled)
The Avante AI assistant is preserved but disabled for performance. To re-enable:
1. Edit `lua/plugins/avante.lua`
2. Change `enabled = false` to `enabled = true`
3. Restart Neovim

## Theme Customization

### Light/Dark Mode Toggle
Use `<leader>ct` to switch between light and dark modes. The theme automatically adjusts:
- **Dark Mode**: White text on dark background
- **Light Mode**: Dark text on light background

### Custom Colors
The cyberdream theme supports extensive customization through the configuration in `lua/plugins/colorscheme.lua`.

## Japanese Language Support

### Encoding
- UTF-8 encoding is set by default
- Optimized for Japanese text editing
- Copilot configured for Japanese language support

### Input Methods
- Works with system input methods
- Proper rendering of Japanese characters
- Line numbering optimized for mixed-language content

## Troubleshooting

### Plugin Issues
1. **Plugin not loading**: Check `:Lazy` for errors
2. **Slow startup**: Review plugin lazy-loading configuration
3. **Theme not switching**: Ensure transparent background is disabled

### Performance
- Plugins are configured for optimal lazy loading
- Disabled runtime plugins improve startup time
- Use `:Lazy profile` to analyze plugin loading times

### Language Servers
1. **LSP not working**: Run `:Mason` to install language servers
2. **Completion issues**: Check `:LspInfo` for server status
3. **Formatting problems**: Verify formatter installation in Mason

## Configuration Files

### Key Files
- `init.lua`: Entry point, loads lazy.nvim
- `lua/config/`: Core configuration (keymaps, options, lazy setup)
- `lua/plugins/`: Individual plugin configurations
- `docs/`: Documentation and manuals

### Customization
1. **Keymaps**: Edit `lua/config/keymaps.lua`
2. **Options**: Modify `lua/config/options.lua`
3. **Plugins**: Add/modify files in `lua/plugins/`
4. **Theme**: Customize `lua/plugins/colorscheme.lua`

## Tips and Best Practices

### Workflow Optimization
1. Use `<leader><space>` for quick file access
2. Leverage `jj` for fast mode switching
3. Use git integration for seamless version control
4. Take advantage of LSP features for code navigation

### Plugin Management
1. Regularly update plugins with `:Lazy update`
2. Clean unused plugins with `:Lazy clean`
3. Review plugin configurations periodically
4. Use `:Lazy profile` to monitor startup performance

### Customization
1. Create personal keymaps in `keymaps.lua`
2. Adjust theme colors in the colorscheme configuration
3. Add new plugins by creating files in `lua/plugins/`
4. Use the existing plugin patterns as templates

## Support and Resources

- **LazyVim Documentation**: https://www.lazyvim.org/
- **Neovim Documentation**: https://neovim.io/doc/
- **Plugin Repository**: Individual plugin GitHub repositories
- **Configuration Reference**: Check the CLAUDE.md file for technical details