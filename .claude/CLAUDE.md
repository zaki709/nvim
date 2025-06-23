# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal Neovim configuration built on **LazyVim** with Japanese language support and modern development tools. The configuration is modular and focuses on productivity, aesthetics, and AI-assisted development.

## Architecture

### Core Structure
- **Base Framework**: LazyVim (lazy.nvim package manager)
- **Configuration Pattern**: Modular Lua configuration with separate plugin files
- **Theme System**: Cyberdream theme with light/dark mode toggling
- **Language Support**: UTF-8 encoding optimized for Japanese development

### Key Directories
- `lua/config/`: Core configuration (keymaps, options, lazy setup, LSP config)
- `lua/plugins/`: Individual plugin configurations (one file per plugin)
- `docs/`: Manual documentation including Avante keybindings
- `image/`: Custom dashboard assets

### Plugin Architecture
- **UI Layer**: cyberdream theme, alpha dashboard, neo-tree, hlchunk
- **Editor Layer**: Comment.nvim, treesj, copy-file-path
- **LSP Layer**: Mason, nvim-lspconfig, nvim-cmp
- **Git Layer**: gitlinker, diffview, gitsigns
- **AI Layer**: Copilot (active), Avante (disabled but preserved)

## Development Commands

### Code Formatting
```bash
stylua . --config-path stylua.toml
```

### Plugin Management
```bash
# In Neovim command mode
:Lazy                    # Open plugin manager
:Lazy update            # Update all plugins
:Lazy clean             # Remove unused plugins
:Lazy sync              # Sync plugins with lockfile
```

### Theme Management
```bash
# In Neovim normal mode
<leader>ct              # Toggle cyberdream light/dark mode
:CyberdreamToggleMode   # Direct command for theme toggle
```

### Configuration Testing
After making changes to plugin configurations, restart Neovim or use:
```bash
:source ~/.config/nvim/init.lua
```

## Key Configuration Patterns

### Plugin Definition Structure
Each plugin in `lua/plugins/` follows this pattern:
```lua
return {
  "author/plugin-name",
  enabled = true,           -- Can be set to false to disable
  event = "VeryLazy",      -- Lazy loading trigger
  opts = {
    -- plugin configuration
  },
  config = function()
    -- custom setup logic
  end,
}
```

### Theme Configuration
The cyberdream theme is configured with:
- `variant = "default"` for manual mode switching
- `transparent = false` to ensure proper background colors
- Custom `overrides` function for text color consistency
- Light/dark mode toggle via `:CyberdreamToggleMode`

### Custom Keymaps
Defined in `lua/config/keymaps.lua`:
- `jj` → Escape insert mode
- `<leader>ct` → Toggle theme mode
- Avante keybindings documented in `docs/manual.md`

## Japanese Language Support

### Encoding Configuration
- UTF-8 encoding set in `lua/config/options.lua`
- Optimized for Japanese text in Copilot interactions
- Line numbers set to absolute (no relative) for better Japanese text editing

### AI Integration
- Copilot configured with Japanese language support
- Avante plugin preserved but disabled (`enabled = false`) for potential future use
- Avante configuration migrated to new `providers` structure

## Plugin State Management

### Disabled Plugins
- **Avante**: Set to `enabled = false` in `lua/plugins/avante.lua` to improve startup performance while preserving all configuration for easy re-enabling

### Performance Optimizations
- Lazy loading configured for most plugins
- Disabled runtime plugins: gzip, tarPlugin, tohtml, tutor, zipPlugin
- Plugin update checker enabled but notifications disabled

## Important Notes

- Never modify `lazy-lock.json` manually - it's managed by lazy.nvim
- Theme toggle creates autocmd events that can be hooked for custom behavior
- The configuration preserves all Avante settings for easy restoration
- Stylua formatting uses 2-space indentation with 120 column width