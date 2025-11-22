#!/bin/bash
# =========================================
# Simple Dotfiles Symlink Script
# Symlinks all dotfiles from ~/dotfiles to ~/
# =========================================

set -e  # Exit on error

# List of dotfiles to link
FILES=(
  .bash_logout
  .bashrc
  .fzf.bash
  .fzf.zsh
  .gitconfig
  .p10k.zsh
  .profile
  .tmux.conf
  .vimrc
  .zshrc
)

echo "Creating symlinks from ~/dotfiles to ~/"
for file in "${FILES[@]}"; do
    ln -sf "$HOME/dotfiles/$file" "$HOME/$file"
done

echo "Symlinks created! Reload your shell with 'source ~/.zshrc' or open a new terminal."
