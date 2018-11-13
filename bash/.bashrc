export PATH=$HOME/.bin:$PATH

if [ -d "$HOME/.asdf" ]; then
  . $HOME/.asdf/asdf.sh
  
  . $HOME/.asdf/completions/asdf.bash
fi

HISTSIZE=5000
HISTFILESIZE=10000

shopt -s histappend
stty -ixon

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
