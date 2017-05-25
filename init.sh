#!/usr/bin/env bash

if ! command -v brew >/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew bundle --file=- <<EOF
brew "automake"
brew "autoconf"
brew "openssl"
brew "libyaml"
brew "readline"
brew "libxslt"
brew "libtool"
brew "unixodbc"

brew "git"
brew "mosh"
brew "the_silver_searcher"
EOF

if ! command -v asdf >/dev/null; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.2.1
  echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
  echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile
fi

if [ ! -d "$HOME/.config/dotfiles" ]; then
  git clone https://github.com/tyrbo/dotfiles.git ~/.config/dotfiles
  cd $HOME/.config/dotfiles && ./install
fi
