#!/bin/bash
origin=$(pwd)

#Change repojitory and update
bash ./ubuntu/ch_repo_to_jp.sh

#apt install
sudo apt install -y lldb 

#install essential
cd $origin
bash ./ubuntu/essential.sh

#git: install and setting
cd $origin
bash ./ubuntu/git.sh
bash ./common/git.sh

#install llvm
cd $origin
bash ./ubuntu/llvm.sh

#mono: install and setup
cd $origin
bash ./ubuntu/mono.sh

#rust: install and setup
cd $origin
sudo apt install -y curl
bash ./common/rust.sh

#vim: install and set up
cd $origin
bash ./ubuntu/vim.sh

#neovim: instal and setup
cd $origin
bash ./ubuntu/nvim.sh

#java: install
cd $origin
sudo apt install -y openjdk-11-jdk

#latex: install and setup
cd $origin
bash ./ubuntu/latex.sh

#install powerline
sudo apt install -y python3-setuptools python-setuptools
cd $origin
bash ./common/powerline.sh

#ssh: setup
cd $origin
bash ./common/ssh.sh
