# set up fzf key bindings and completion
eval "$(fzf --bash)"

# default
export FZF_DEFAULT_COMMAND='fd --hidden --follow --type f --type d'
export FZF_DEFAULT_OPTS="
  --style=full
  --layout=reverse
  --bind='alt-j:preview-down,alt-k:preview-up'
"

# ctrl-t for file
export FZF_CTRL_T_COMMAND="fd --hidden --follow --type f"
export FZF_CTRL_T_OPTS="
  --walker-skip .git
  --preview 'bat -n --theme=\"Catppuccin Mocha\" --color=always {}'
  --preview-window='right:60%,wrap'
  --bind 'ctrl-/:change-preview-window(hidden|)'
"

# ctrl-c for dir
export FZF_ALT_C_COMMAND="fd --hidden --follow --type d"
export FZF_ALT_C_OPTS="
  --walker-skip .git
  --preview 'eza --tree --icons=auto --only-dirs --color=always {}'
  --preview-window='right:60%'
  --bind 'ctrl-/:change-preview-window(hidden|)'
"

