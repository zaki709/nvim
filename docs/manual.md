# zaki-nvim Key Bindings Reference

## Custom Key Bindings

### **Theme and UI**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader>ct` | Normal | Toggle cyberdream light/dark mode |

### **Insert Mode Shortcuts**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `jj` | Insert | Escape to normal mode |

### **File Operations**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader>cp` | Normal | Copy file path to clipboard |

### **Git Integration**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader>gy` | Normal/Visual | Yank git link |
| `<leader>gY` | Normal/Visual | Open git link in browser |
| `<leader>gr` | Normal | Open repository in GitHub |
| `<leader>go` | Normal | Open file in GitHub |

### **Code Manipulation**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<space>m` | Normal | TreeSJ toggle |
| `<space>j` | Normal | TreeSJ join |
| `<space>s` | Normal | TreeSJ split |

### **LSP and Code Navigation**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `gd` | Normal | Go to definition (LSP) |
| `gr` | Normal | Go to references (LSP) |
| `K` | Normal | Show hover information (LSP) |
| `<leader>gld` | Normal | Glance definitions |
| `<leader>glr` | Normal | Glance references |
| `<leader>glt` | Normal | Glance type definitions |
| `<leader>cs` | Normal | Toggle symbols outline |

### **Terminal**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<C-\>` | Normal | Toggle floating terminal |

## LazyVim Default Key Bindings

### **Navigation**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<C-h>` | Normal | Go to left window |
| `<C-j>` | Normal | Go to lower window |
| `<C-k>` | Normal | Go to upper window |
| `<C-l>` | Normal | Go to right window |
| `<S-h>` | Normal | Previous buffer |
| `<S-l>` | Normal | Next buffer |

### **File and Search**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader><space>` | Normal | Find files |
| `<leader>ff` | Normal | Find files (root dir) |
| `<leader>fb` | Normal | Find buffers |
| `<leader>/` | Normal | Search in project |
| `<leader>sr` | Normal | Search and replace |

### **Code Actions**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader>ca` | Normal | Code action |
| `<leader>cr` | Normal | Rename |
| `<leader>cf` | Normal | Format document |
| `<A-j>` | Normal/Visual | Move line down |
| `<A-k>` | Normal/Visual | Move line up |

### **Git Operations**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader>gg` | Normal | Open Lazygit |
| `<leader>gb` | Normal | Git blame line |
| `]h` / `[h` | Normal | Next/Previous hunk |
| `<leader>ghs` | Normal | Stage hunk |
| `<leader>ghr` | Normal | Reset hunk |

### **Diagnostics**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `]d` / `[d` | Normal | Next/Previous diagnostic |
| `]e` / `[e` | Normal | Next/Previous error |
| `<leader>xx` | Normal | Toggle diagnostics |
| `<leader>cd` | Normal | Show diagnostic |

### **Window Management**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<leader>-` | Normal | Split horizontally |
| `<leader>\|` | Normal | Split vertically |
| `<leader>wd` | Normal | Close window |
| `<C-Up/Down/Left/Right>` | Normal | Resize window |

### **Miscellaneous**
| Key Binding | Mode | Description |
|-------------|------|-------------|
| `<C-s>` | Normal | Save file |
| `<leader>l` | Normal | Open Lazy plugin manager |
| `<leader>qq` | Normal | Quit all |
| `s` | Normal | Flash jump |
| `S` | Normal | Flash treesitter |

## Avante AI Assistant (Currently Disabled)

### **Avante Key Bindings** 
*Note: Avante is currently disabled but can be re-enabled by setting `enabled = true` in `lua/plugins/avante.lua`*

| Key Binding | Description |
| --- | --- |
| `<leader>aa` | Show sidebar |
| `<leader>at` | Toggle sidebar visibility |
| `<leader>ar` | Refresh sidebar |
| `<leader>af` | Switch sidebar focus |
| `<leader>a?` | Select model |
| `<leader>ae` | Edit selected blocks |
| `<leader>aS` | Stop current AI request |
| `<leader>ah` | Select between chat histories |
| `<leader>aB` | Add all buffer (files) as Selected Files |

### **Conflict Resolution**
| Key Binding | Description |
| --- | --- |
| `co` | Choose ours |
| `ct` | Choose theirs |
| `ca` | Choose all theirs |
| `c0` | Choose none |
| `cb` | Choose both |
| `cc` | Choose cursor |
| `]x` | Move to previous conflict |
| `[x` | Move to next conflict |
| `[[` | Jump to previous codeblocks (results window) |
| `]]` | Jump to next codeblocks (results window) |