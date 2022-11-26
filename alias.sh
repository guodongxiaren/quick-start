export TMOUT=0 # 防止tmux在空闲时自动kill
export TERM=xterm-256color # 防止tmux中使用删除键出问题
export EDITOR=vim # 防止crontab -e用nano打开
export PATH=~/miniconda3/bin/:$PATH


alias grep="grep --color"
alias ls="ls --color"
alias ll="ls -lhaF --color"
alias tat="tmux a -t"
alias tailf="tail -F"
alias nb="rm -f nohup.out && nohup blade build &"
alias gc="git checkout"
alias cls="clear"
alias clone="git clone"


git config --global core.editor vim # 防止git commit用nano打开

# 生成某个文件的绝对路径，方便cp
function pwf() {
    echo $PWD"/$1"
}

# 生成某个文件的网络路径，方便scp或wget
function pwnf() {
    echo `whoami`@`hostname -i`:$PWD"/$1"
}

# git push到远端同名分支。不能用alias因为分支名会被存起来，不是动态的，只能用function
function gpush() {
    git push origin `git branch|grep "\*"|awk '{print $2}'`
}

unalias gcm
function gcm() {
    git commit -m "$*"
}
