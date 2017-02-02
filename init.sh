#!/usr/bin/env bash
RUBY_VERSION=2.3.3
ELIXIR_VERSION=1.4.1
ERLANG_VERSION=19.2

if ! command -v brew >/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew bundle --file=- <<EOF
tap "d12frosted/emacs-plus"

brew "automake"
brew "autoconf"
brew "openssl"
brew "libyaml"
brew "readline"
brew "libxslt"
brew "libtool"
brew "unixodbc"

brew "emacs-plus"
linkapps "emacs-plus"

brew "git"
brew "mosh"
brew "the_silver_searcher"
EOF

if ! command -v asdf >/dev/null; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.2.1
  echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
  echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile
fi

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

if [ ! -d "$HOME/.config/dotfiles" ]; then
  git clone https://github.com/tyrbo/dotfiles.git ~/.config/dotfiles
  cd $HOME/.config/dotfiles && ./install
fi
