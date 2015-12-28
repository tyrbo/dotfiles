#!/usr/bin/env bash

# I'm a bash noob. This file was based off of https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh
cd "$(dirname "${BASH_SOURCE}")";

read -p "This is destructive and may delete things. Are you sure? (y/n) " -n 1;

if [[ $REPLY =~ ^[Yy]$ ]]; then
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "lame.sh" --exclude "README.md" -avh --no-perms . ~;
fi
