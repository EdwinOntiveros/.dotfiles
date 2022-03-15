if [ -z ${GLOBAL_ALIASES_DEFINED+x} ]; then

export GLOBAL_ALIASES_DEFINED=1

# global aliases
alias sudo='sudo '
alias grep='grep --colour=auto '
alias egrep='egrep --colour=auto '
alias fgrep='fgrep --colour=auto '
alias man='man '
alias help='man '
alias head='head '
alias tail='tail '
alias less='less '
alias more='more '

alias cp='cp -iv '
alias sucp='sudo cp'

alias rm='rm -fv '
alias surm='sudo rm'

alias rmd='rm -r '
alias surmd='sudo rmd'

alias free='free -mt '

alias mv='mv -v '

alias ls='ls -SF --color=auto --group-directories-first '
alias mkdir='mkdir -v '

alias df='df -ahiT --total '
alias du='du -ach '

alias curl='curl '
alias wget='wget -c '

alias users="cut -d : -f1 /etc/passwd" 
alias mirrors="sudo reflector --protocol https --score 100 --fastest 10\
    --sort rate --save /etc/pacman.d/mirrorlist --verbose"

fi

