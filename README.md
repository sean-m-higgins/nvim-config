# Neovim Config

Personal Neovim configuration built on [LazyVim](https://github.com/LazyVim/LazyVim).

## Enabled LazyVim Extras

- **Editor**: Harpoon 2, Refactoring
- **Languages**: CMake, Docker, Go, Markdown, Python, TOML, TypeScript

## Prerequisites

- Neovim >= 0.10
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (optional, for icons)
- ripgrep (`brew install ripgrep`)
- fd (`brew install fd`)

## Installation

Back up your existing config, then clone:

```sh
mv ~/.config/nvim ~/.config/nvim.bak
git clone https://github.com/<your-username>/nvim.git ~/.config/nvim
```

Open Neovim and plugins will install automatically on first launch.

## Structure

```
lua/
  config/
    lazy.lua      -- Plugin manager bootstrap
    options.lua   -- Editor options
    keymaps.lua   -- Custom keymaps
  plugins/        -- Custom plugin specs
lazyvim.json      -- LazyVim extras selection
```

## Custom Keymaps

| Key | Mode | Action |
|-----|------|--------|
| `<leader>w` | Normal | Save file |
| `<Esc>` | Normal | Clear search highlights |
| `J` / `K` | Visual | Move selected lines down/up |
