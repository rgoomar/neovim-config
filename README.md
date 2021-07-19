# Neovim Config

This is my Neovim (0.5+) configuration for everyday use.

## Installation

### MacOS

*Setup Script Requirements*
* MacOS
* Homebrew
* Node v14+ (tested) and NPM
* Golang v1.15+ (tested)

```bash
./setup.sh
```

### Linux
This isn't tested, although I believe it should work.

Copy the config:
```bash
mkdir -p $HOME/.config/nvim/vim-plug
cp init.vim $HOME/.config/nvim/init.vim
cp vim-plug/plugins.vim $HOME/.config/nvim/vim-plug/plugins.vim
```

You will need to manually install the language servers for the list below.

## What's in the configuration

### VIM Plugin Manager

Uses [vim-plug](https://github.com/junegunn/vim-plug) for installing plugins for nvim.

### Language Server Support

It uses the built-in language server client with the [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) plugin.

The configuration and setup script will get you ready for the following languages:
* Golang
* Bash
* TypeScript
* HTML
* CSS
* Python
* Dockerfile
* Terraform
* Rust
* VIM Script
* GraphQL

You can check if your language server is running properly with `:LspInfo` when in an open file.

### Auto Completion

Utilizes [nvim-compe](https://github.com/hrsh7th/nvim-compe) for auto completion.

### File finding

Uses [https://github.com/nvim-telescope/](nvim-telescope) for finding strings and files and uses ripgrep by default for searching.

### Misc

* [GitHub Theme](https://github.com/projekt0n/github-nvim-theme) Theme
* [nvim-autopairs](https://github.com/windwp/nvim-autopairs) for pairing brackets

### Keybindings

These are the custom keybindings.
There are quite a few default keybindings in-use like for actions on files in Telescope.

| Description | Keybinding |
| --- | --- |
| Leader Key | , |
| Go to declaration | gD |
| Go to implementation | gi |
| Add workspace folder | SPACE + wa |
| Remove workspace folder | SPACE + wr |
| List workspace folders | SPACE + wl |
| Find definition & references | gh |
| Code Action on Diagnosis | , + ca |
| Render Hover Documentation | K |
| Signature Help | gs |
| Rename | gr |
| Preview Definition | gd |
| Show line diagnostics | , + cd |
| Show cursor diagnostics | , + cc |
| Jump to previous diagnostic | [e |
| Jump to next diagnostic | ]e |
| Focus to NERDTree | , + n |
| Toggle NERDTree | CTRL + n |
| Find in NERDTree | CTRL + f |
| Find files | , + ff |
| Ripgrep files | , + fg |
