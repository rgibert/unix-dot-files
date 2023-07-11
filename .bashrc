#!/usr/bin/env bash

eval "$(starship init bash)"

if [[ ! -d ~/.config/ansible/retry ]]; then
    mkdir -p ~/.config/ansible/retry
fi

for f in ~/.config/proxy ~/.config/aliases ~/.config/vars ~/.config/secrets/*.secret; do
    if [[ -f "${f}" ]]; then
        source "${f}"
    fi
done
