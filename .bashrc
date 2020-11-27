#defindo branch status - git

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u \[\033[33m\]\W\[\033[01;36m\]\$(parse_git_branch)\[\033[00m\] $ "
LS_COLORS='di=1;33';export LS_COLORS

#alias aleatórios
alias up="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias docker0="sudo ifconfig docker0 down"
alias pwd="pwd && pwd | tr -d  '\n' | xclip -selection clipboard"
alias install="sudo apt-get install -y"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


#Control web servers
alias nginxreload="sudo /usr/local/nginx/sbin/nginx -s reload"
alias nginxtest="sudo /usr/local/nginx/sbin/nginx -t"
alias httpdreload="sudo /usr/sbin/apachectl -k graceful"
alias httpdtest="sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS"

#keys aws
export AWS_ACCESS_KEY_ID=sua_access_key_id
export AWS_SECRET_ACCESS_KEY=sua_secret_key
export AWS_REGION=sa-east-1

recria_stage () {
git checkout master
git branch -D stage
git push origin :stage
git fetch -pt
git rebase origin/master
git checkout -b stage
git push origin stage
}

echo -e "Hey $USER, cara, apenas \033[01;33mNão seja um idiota\033[01;37m!"
