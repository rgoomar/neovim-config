#!/bin/bash

# This is a setup script for my NeoVim configuration
# Requires Homebrew, NPM, and Go installed
# Ensure you have their relative binary paths added to your $PATH in ~/.zshrc or ~/.bashrc

# Installs language server support for the following:
# * Golang
# * Bash
# * TypeScript
# * HTML
# * CSS
# * Python
# * Dockerfile
# * Terraform
# * Rust
# * VIM Script

# Copy Configuration Files
mkdir -p $HOME/.config/nvim/vim-plug
cp init.vim $HOME/.config/nvim/init.vim
cp vim-plug/plugins.vim $HOME/.config/nvim/vim-plug/plugins.vim

# Dependencies

if ! command -v brew &> /dev/null
then
	echo "Missing Homebrew. Exiting..."
	exit
fi

if ! command -v npm &> /dev/null
then
	echo "Missing NPM. Exiting..."
	exit
fi

if ! command -v go &> /dev/null
then
	echo "Missing Go. Exiting..."
	exit
fi


if ! command -v nvim &> /dev/null
then
	brew install neovim
fi

npm i -g \
	bash-language-server \
	vscode-langservers-extracted \
	pyright \
	dockerfile-language-server-nodejs \
	typescript typescript-language-server \
	vim-language-server \
	graphql-language-service-cli \
	diagnostic-languageserver

brew install \
    tree-sitter \
    luajit \
    hashicorp/tap/terraform-ls \
    rust-analyzer \
    ripgrep

GO111MODULE=on go get golang.org/x/tools/gopls@latest

# Install NeoVim Plugins
nvim +PlugInstall +qall
nvim "+TSInstall javascript typescript bash go html css python rust yaml graphql" +qall
