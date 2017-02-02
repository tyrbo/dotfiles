#!/usr/bin/env bash
RUBY_VERSION=2.3.3
ELIXIR_VERSION=1.4.1
ERLANG_VERSION=19.2

if [ ! -d "$HOME/.bin" ]; then
  mkdir "$HOME/.bin"
fi

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

  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
  asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git

  asdf install ruby $RUBY_VERSION
  asdf global ruby $RUBY_VERSION

  asdf install elixir $ELIXIR_VERSION
  asdf global elixir $ELIXIR_VERSION

  asdf install erlang $ERLANG_VERSION
  asdf global erlang $ERLANG_VERSION
fi
