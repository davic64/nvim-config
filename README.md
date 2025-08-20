# Neovim Configuration

My modern, fast, and beautiful Neovim configuration built with Lua and lazy.nvim. Features a transparent UI, LazyVim-inspired dashboard, and comprehensive LSP support.

## ✨ Features

- 🎨 **Beautiful UI** - Catppuccin colorscheme with transparent backgrounds
- 📁 **File Explorer** - Neo-tree with comprehensive git integration
- 🔍 **Fuzzy Finder** - Telescope for files, text search, and more
- 💡 **LSP Support** - Full language server protocol with Mason
- 🔧 **Auto-completion** - Smart completion with nvim-cmp
- 🎯 **Code Actions** - Formatting, linting, and diagnostics
- ⚡ **Fast Startup** - Optimized with lazy loading
- 🔥 **Modern Features** - Snacks.nvim for enhanced UI components

```
██████╗  █████╗ ██╗   ██╗██╗ ██████╗ ██████╗ ██╗  ██╗
██╔══██╗██╔══██╗██║   ██║██║██╔════╝██╔════╝ ██║  ██║
██║  ██║███████║██║   ██║██║██║     ███████╗ ███████║
██║  ██║██╔══██║╚██╗ ██╔╝██║██║     ██╔═══██╗╚════██║
██████╔╝██║  ██║ ╚████╔╝ ██║╚██████╗╚██████╔╝     ██║
╚═════╝ ╚═╝  ╚═╝  ╚═══╝  ╚═╝ ╚═════╝ ╚═════╝      ╚═╝
```

## 🛠️ Installation

### Prerequisites

- **Neovim 0.9+** - Latest stable version recommended
- **Git** - For plugin management
- **Node.js** - For LSP servers and tools
- **Ripgrep** - For fast text searching
- **fd** - For fast file finding (optional but recommended)

### Quick Install

```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this configuration
git clone git@github.com:davic64/nvim-config.git ~/.config/nvim

# Start Neovim (plugins will install automatically)
nvim
```

### First Launch

On first startup:

1. Lazy.nvim will automatically install all plugins
2. Mason will prompt to install language servers
3. Restart Neovim after installation completes

## ⌨️ Key Bindings

### Leader Key: `Space`

| Key          | Mode   | Description           |
| ------------ | ------ | --------------------- |
| `jk`         | Insert | Exit insert mode      |
| `<leader>ee` | Normal | Toggle file explorer  |
| `<leader>ef` | Normal | Focus file explorer   |
| `<leader>er` | Normal | Refresh file explorer |

### File Operations

| Key          | Description            |
| ------------ | ---------------------- |
| `<leader>ff` | Find files             |
| `<leader>fs` | Find text              |
| `<leader>fr` | Recent files           |
| `<leader>fc` | Find word under cursor |

### Buffer Management

| Key          | Description          |
| ------------ | -------------------- |
| `<S-h>`      | Previous buffer      |
| `<S-l>`      | Next buffer          |
| `<leader>bd` | Delete buffer        |
| `<leader>bp` | Pick buffer          |
| `<leader>bc` | Pick buffer to close |

### Window Management

| Key          | Description         |
| ------------ | ------------------- |
| `<leader>sv` | Split vertically    |
| `<leader>sh` | Split horizontally  |
| `<leader>se` | Equal window sizes  |
| `<leader>sx` | Close current split |

### Tab Management

| Key          | Description                    |
| ------------ | ------------------------------ |
| `<leader>to` | Open new tab                   |
| `<leader>tx` | Close current tab              |
| `<leader>tn` | Go to next tab                 |
| `<leader>tp` | Go to previous tab             |
| `<leader>tf` | Open current buffer in new tab |

### Quick Actions

| Key          | Description             |
| ------------ | ----------------------- |
| `<leader>qq` | Close all               |
| `<leader>qw` | Save changes            |
| `<leader>nh` | Clear search highlights |

### LSP Features

| Key          | Description          |
| ------------ | -------------------- |
| `gd`         | Go to definition     |
| `gD`         | Go to declaration    |
| `gi`         | Go to implementation |
| `gr`         | Show references      |
| `K`          | Hover documentation  |
| `<leader>ca` | Code actions         |
| `<leader>rn` | Rename symbol        |

## 🔧 Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json          # Plugin version lock
└── lua/davic/
    ├── core/
    │   ├── init.lua         # Core module loader
    │   ├── options.lua      # Vim settings
    │   └── keymaps.lua      # Key bindings
    ├── lazy.lua            # Plugin manager setup
    └── plugins/            # Plugin configurations
        ├── init.lua        # Plugin registry
        ├── colorscheme.lua # Catppuccin theme
        ├── lspconfig.lua   # LSP configuration
        ├── telescope.lua   # Fuzzy finder
        ├── neo-tree.lua    # File explorer
        ├── dashboard.lua   # Start screen
        └── ...
```

## 🎨 Customization

### Changing Colorscheme

Edit `lua/davic/plugins/colorscheme.lua`:

```lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Change to: latte, frappe, macchiato, mocha
      transparent_background = true,
    })
    vim.cmd([[colorscheme catppuccin]])
  end,
}
```

### Adding New Plugins

Simple plugins in `lua/davic/plugins/init.lua`:

```lua
{
  "author/plugin-name",
  event = "VeryLazy", -- Optional lazy loading
}
```

Complex plugins - create new file in `lua/davic/plugins/`:

```lua
-- lua/davic/plugins/new-plugin.lua
return {
  "author/plugin-name",
  dependencies = { "other/plugin" },
  config = function()
    require("plugin-name").setup({
      -- configuration options
    })
  end,
}
```

### Modifying Key Bindings

Edit `lua/davic/core/keymaps.lua`:

```lua
local keymap = vim.keymap

-- Add your custom keymaps
keymap.set("n", "<leader>xx", ":YourCommand<CR>", { desc = "Description" })
```

## 🚀 Included Plugins

### UI & Appearance

- [catppuccin](https://github.com/catppuccin/nvim) - Beautiful colorscheme
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status line
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - Buffer tabs
- [noice.nvim](https://github.com/folke/noice.nvim) - Enhanced UI
- [snacks.nvim](https://github.com/folke/snacks.nvim) - Modern UI components
- [which-key.nvim](https://github.com/folke/which-key.nvim) - Keybinding help popup

### File Management

- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - FZF sorter for Telescope
- [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) - Enhanced UI select
- [harpoon](https://github.com/ThePrimeagen/harpoon) - Quick file navigation

### LSP & Completion

- [mason.nvim](https://github.com/williamboman/mason.nvim) - LSP installer
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Auto-completion
- [luasnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine
- [conform.nvim](https://github.com/stevearc/conform.nvim) - Code formatting
- [nvim-lint](https://github.com/mfussenegger/nvim-lint) - Linting support
- [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) - Additional LSP features
- [neoconf.nvim](https://github.com/folke/neoconf.nvim) - Project configuration
- [neodev.nvim](https://github.com/folke/neodev.nvim) - Neovim Lua development

### Development Tools

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Advanced syntax highlighting
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration
- [mini.diff](https://github.com/echasnovski/mini.diff) - Git diff indicators
- [trouble.nvim](https://github.com/folke/trouble.nvim) - Diagnostics
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) - TODO highlights
- [illuminate.nvim](https://github.com/RRethy/vim-illuminate) - Highlight word under cursor

### Editing Enhancement

- [mini.pairs](https://github.com/echasnovski/mini.pairs) - Auto pairs
- [mini.surround](https://github.com/echasnovski/mini.surround) - Surround text
- [flash.nvim](https://github.com/folke/flash.nvim) - Enhanced motions
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Tmux integration

---

⭐ **Star this repo if you find it useful!**
