if [ -z ${PACMAN_ALIASES_DEFINED+x} ]; then

export PACMAN_ALIASES_DEFINED=1

alias pacman='pacman --color=auto --verbose'
alias supacman='sudo pacman '

alias pacman-update-packages='supacman -Syu --confirm '
alias pacman-update-all='supacman -Syyu --confirm '
alias pacman-update-full='supacman -Syyuu --confirm '

alias pacman-search='pacman -Ss'
alias pacman-search-installed='pacman -Qs'
alias pacman-installed-info='pacman -Qi'
alias pacman-repo-info='pacman -Si'

alias pacman-install='supacman -Syu --confirm '
alias pacman-install-local='supacman -U --confirm '
alias pacman-install-mirror='supacman -U --confirm '
alias pacman-install-as-dep='supacman -Syu --asdeps --confirm '
alias pacman-download-package='supacman -Sw --confirm '
alias pacman-package-owner='supacman -Qo --confirm '

alias pacman-remove='supacman -R --confirm '
alias pacman-remove-all='supacman -Rsu --confirm '
alias pacman-remove-full='supacman -Rsun --confirm '

alias pacman-list-orphans='pacman -Qdt'
alias pacman-remove-orphans'pacman -Rs $(pacman -Qdtq) --confirm '

alias pacman-clean-cache='pacman -Sc --confirm '
alias pacman-clean-cache-full'pacman -Scc --confirm '
alias pacman-clean-cache-old='paccache -rvk3 --confirm '

alias pacman-changelog='pacman -c '
alias pacman-log='tail -f /var/log/pacman.log'

alias pacman-search-deps='pacman -T '
alias pacman-file-deps='pacman -F '

fi

