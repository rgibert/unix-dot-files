[[ -f "${HOME}/.zprofile" ]] && source "${HOME}/.zprofile"

eval_if_exists direnv hook zsh
eval_if_exists starship init zsh
source_if_exists "${HOME}/.config/shell/fzf.zsh"
