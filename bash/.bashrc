
if [ -d "$HOME/.asdf" ]; then
  . $HOME/.asdf/asdf.sh
  
  . $HOME/.asdf/completions/asdf.bash
fi

if [ -d "$HOME/.rvm/bin" ]; then
  export PATH="$PATH:$HOME/.rvm/bin"
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi


HISTSIZE=5000
HISTFILESIZE=10000

shopt -s histappend
stty -ixon

export CHROME_BIN=/usr/bin/google-chrome
export PATH=$HOME/.bin:$PATH
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export PS1="\[\033[38;5;38m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;105m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;250m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\\$\[$(tput sgr0)\] "
