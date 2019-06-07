#defindo branch status - git

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

#alias aleatórios
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias docker0="sudo ifconfig docker0 down"
#Control web servers
alias nginxreload="sudo /usr/local/nginx/sbin/nginx -s reload"
alias nginxtest="sudo /usr/local/nginx/sbin/nginx -t"
alias httpdreload="sudo /usr/sbin/apachectl -k graceful"
alias httpdtest="sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS"
