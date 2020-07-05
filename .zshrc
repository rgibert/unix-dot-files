export ZSH="${HOME}/.local/share/oh-my-zsh"

ZSH_THEME="bira"

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

source ${ZSH}/oh-my-zsh.sh

export EDITOR="vi"

if [[ ! -d ~/.config/ansible/retry ]]; then
    mkdir -p ~/.config/ansible/retry
fi

for f in ~/.config/proxy ~/.config/aliases ~/.config/vars; do
    if [[ -f ${f} ]]; then
        source ${f}
    fi
done

compinit -D

