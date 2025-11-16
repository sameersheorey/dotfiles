# Setup fzf
# ---------
if [[ ! "$PATH" == */home/sam/.vim/pack/vendor/start/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/sam/.vim/pack/vendor/start/fzf/bin"
fi

eval "$(fzf --bash)"
