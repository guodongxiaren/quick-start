#!/bin/bash
### install zsh(if not exist)
wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
tar xf zsh.tar.xz
mkdir -p "$HOME/local"
cd zsh-5.7.1 # 版本号可能变
./configure --prefix="$HOME/local"
make -j8 && make install

### init oh-my-zsh
ln -s dora/ohmyzsh/ ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

chsh -s "$HOME/local/bin/zsh"
