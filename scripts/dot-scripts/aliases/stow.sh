if [ -z ${STOW_ALIASES_DEFINED+x} ]; then

export STOW_ALIASES_DEFINED=1

alias dotstow='stow --dotfiles --verbose '
alias stowadd='dotstow --adopt -S '
alias stowt='dotstow --adopt -Sn '
alias unstow='dotstow -D '
alias restow='dotstow --adopt -R '

fi

