[[ -f "${HOME}/.config/shell/functions" ]] && source "${HOME}/.config/shell/functions"

source_if_exists ${HOME}/.config/shell/*

if [[ ! -d ~/.config/ansible/retry ]]; then
    mkdir -p ~/.config/ansible/retry
fi

eval_if_exists direnv hook zsh
eval_if_exists pyenv init -
