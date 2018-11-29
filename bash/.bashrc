
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

export EDITOR=nvim
export PATH=$HOME/.bin:$HOME/.cargo/bin:$PATH
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export PS1="\[\033[38;5;38m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;105m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;250m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\\$\[$(tput sgr0)\] "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
