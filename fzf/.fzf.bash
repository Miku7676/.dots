# Setup fzf
# ---------
if [[ ! "$PATH" == */home/miku/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/miku/.fzf/bin"
fi

# Open in tmux popup if on tmux, otherwise use --height mode
export FZF_DEFAULT_OPTS="--height 100% --tmux bottom,50% "

eval "$(fzf --bash)"
