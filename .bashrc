#!/bin/bash

export LANG=en_AU.UTF-8
export EDITOR=vim

if [ -n "$DOTFILES" ]; then
  . "$DOTFILES/.helpers.sh"
  . "$DOTFILES/.git_helpers.sh"
else
  echo "\$DOTFILES is not set; helpers not loaded."
fi