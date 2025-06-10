#!/bin/bash

export LANG=en_AU.UTF-8
export EDITOR=vim

maybe_dotfiles=("$DOTFILES" "$HOME/dotfiles" "/dotfiles")
for df in "${maybe_dotfiles[@]}"; do
  [ -d "$df" ] && export DOTFILES=$df && break
done

if [ -n "$DOTFILES" ]; then
  . "$DOTFILES/.helpers.sh"
  . "$DOTFILES/.git_helpers.sh"
else
  echo "\$DOTFILES is not set; helpers not loaded."
fi