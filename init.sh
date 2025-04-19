#!/bin/bash
### install zsh(if not exist)
wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
tar xf zsh.tar.xz
mkdir -p "$HOME/local"
cd zsh-5.7.1 # 版本号可能变
./configure --prefix="$HOME/local"
make -j8 && make install

### init oh-my-zsh
# oh-my-zsh直接用官网命令，某些情况下在国内会可能下载不下来。可以先浏览器打开https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/refs/heads/master/tools/install.sh
# 然后复制文本到远程机器上，保存install.sh并执行。
# ln -s dora/ohmyzsh/ ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

chsh -s "$HOME/local/bin/zsh"
