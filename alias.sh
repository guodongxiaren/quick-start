export TMOUT=0 # 防止tmux在空闲时自动kill
export TERM=xterm-256color # 防止tmux中使用删除键出问题
export EDITOR=vim # 防止crontab -e用nano打开


git config --global core.editor vim # 防止git commit用nano打开

# 生成某个文件的绝对路径，方便cp
function pwf() {
    echo $PWD"/$1"
}

# 生成某个文件的网络路径，方便scp或wget
function pwnf() {
    echo `whoami`@`hostname -i`:$PWD"/$1"
}
