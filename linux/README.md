# Ubuntu 16.04 Install
## Install packages
```bash
sudo apt update
sudo apt upgrade
sudo apt-get install wget curl git zsh cmake xclip tmux gnome-tweak-tool unity-tweak-tool
```

## Install google-chrome
```bash
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get google-chrome-stable
```

## Configure zsh
```bash
sudo chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Configure solarized-theme
```bash
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh
```

### Change dircolors
```bash
wget https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
mv dircolors.ansi-dark .solarized
```
Open `.zshrc` and add the line:
```bash
eval `dircolors ~/.solarized/dircolors.ansi-dark`
```

### Delete user and computer name on agnoster theme
```bash
vim .oh-my-zsh/themes/agnoster.zsh-theme
```
find `# Context: user@hostname`, where `$USER@%m`, delete `@%m` to delete computer name, or further more delete `$USER` to delete username as well

## Install vim 8.0
```bash
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt remove vim-tiny
sudo apt install vim
sudo apt install vim-nox #if no python3 support
```
### Install vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
### Compile YCM
Compiling YCM without semantic support for C-family languages:
```bash
cd ~/.vim/bundle/YouCompleteMe
./install.py
```
### Start tmux which terminal open
```bash
vim ~/.oh-my-zsh/plugins/tmux/tmux.plugin.zsh
```

## Setup git
```bash
git config --global user.name "Daniel Yang"
git config --global user.email "danielyang1009@gmail.com"
```

### Generating a new SSH key
```bash
ssh-keygen -t rsa -b 4096 -C "danielyang1009@gmail.com"
```

### Adding your SSH key to the ssh-agent
```bash
eval $(ssh-agent -s)
```
### Copy the SSH key to your clipboard
```bash
xclip -sel clip < ~/.ssh/id_rsa.pub
```
#### Adding SSH key to github

### Patch fonts
```bash
git clone https://github.com/powerline/fonts.git
cd ~/fonts
./install.sh
```

### Install anaconda/miniconda
https://www.continuum.io/downloads
```bash
chmod +x Anaconda3-4.2.0.sh
./Anaconda3-4.2.0.sh
conda update --all
```

### Install paper icon/theme
```bash
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-gtk-theme
sudo apt-get install paper-icon-theme
```

### Install sogou input
- Switch to fcitx 
- Install sogou deb file


### Apps
- unity-tweak-tool 
- gnome-tweak-tool
- albert
- VLC
- zeal
- spotify
- docky
- texmaker
- apvlv
- okular
- gitkraken
- dropbox
- deluge
