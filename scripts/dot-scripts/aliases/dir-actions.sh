if [ -z ${DIR_ACTIONS_ALIASES_DEFINED+x} ]; then
export DIR_ACTIONS_ALIASES_DEFINED=1

alias ls='ls --color=auto --group-directories-first -F '
alias la='ls -lah'
alias lA='ls -lAh'
alias ld='ls -ldh'
alias lD='ld -R'

alias mkdir='mkdir -vp'

alias rm='rm -v'
alias rmd='rm -rfi'

fi

