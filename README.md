# dotfiles

## Mac

## keyboard
- `defaults write -g ApplePressAndHoldEnabled -bool false`
- restart
- System Preference > Keyboard
- 'Key Repeat': Fast
- 'Delay Until Repeat' Short

### fish shell
```bash
# install
brew install fish
# edit fish config
fish_config
# install hyper-dracula theme
hyper install hyper-dracula
# set path, set -e to erase?
set -U fish_user_paths SOME_PATH $fish_user_paths
```

### conda env with fish shell
```bash
# get conda location <CONDA_ROOT>
conda info --root
# add line to ~/.config/fish/config.fish
# source <CONDA_ROOT>/etc/fish/conf.d/conda.fish
```

### Swipe title bar with two finger
- Swipe right/left: move to next workspace
- Swipe up/down: maximize window/restore from maximized window

## Keyboard shortcut

### Go to directory in Finder
- `Command + Shift + g`

### Show hidden file
- `Command + Shift + dot`

### Check out file info of multiple files
- `Command + Option + i (instead of Command + i)`


## git

### change privious commit message
```bash
# X is number of commit to show
# change pick to reword :wq to quit
# edit each commit
git rebase -i HEAD~X
# after edit
git push origin master --force
```

### Add tuna mirror
`/Library/Application Support/pip/pip.conf` if not exists, create one

Add following to file
```
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
```
## Homebrew

- [ustc](http://mirrors.ustc.edu.cn/)
- [tuna](https://mirrors.tuna.tsinghua.edu.cn/)

- get `brew_install`
```
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install >> brew_install
```

- edit `brew_install`
```
# BREW_REPO = "https://github.com/Homebrew/brew".freeze
BREW_REPO = "https://mirrors.ustc.edu.cn/brew.git".freeze
CORE_TAP_REPO = "https://mirrors.ustc.edu.cn/homebrew-core.git".freeze
```

- install `homebrew`
```
ruby ./brew_install
```

- stuck at clong
```
git clone git://mirrors.ustc.edu.cn/homebrew-core.git/ /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core --depth=1

cd "$(brew --repo)"
git remote set-url origin git://mirrors.ustc.edu.cn/brew.git
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-core.git
```

- Bottles source for zsh
```
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc
```

- install brew cask `brew install cask`
```
默认不安装cask 有需要的可以替换
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-cask"
git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-cask.git
```

## VScode Vim autoswitch input method

1. Install `im-select`
- macOS
```bash
curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh
```
- win download from [Im-select](https://github.com/daipeihust/im-select)

2. Add to setting json file
- macOS

```json
"vim.autoSwitchInputMethod.enable": true,
"vim.autoSwitchInputMethod.defaultIM": "com.apple.keylayout.US",
"vim.autoSwitchInputMethod.obtainIMCmd": "/usr/local/bin/im-select",
"vim.autoSwitchInputMethod.switchIMCmd": "/usr/local/bin/im-select {im}"
```

- win
```json
"vim.autoSwitchInputMethod.enable": true,
"vim.autoSwitchInputMethod.defaultIM": "1033",
"vim.autoSwitchInputMethod.obtainIMCmd": "C:\\im-select\\im-select.exe", 
"vim.autoSwitchInputMethod.switchIMCmd": "C:\\im-select\\im-select.exe {im}"
```
[Ref](https://github.com/VSCodeVim/Vim#input-method)

## Windows

### Shortcuts

- `Win + D`: show desktop
- `Win + E`: windows explorer
- `Win + I`: settings
- `Win + V`: clipboard history
- `Win + P`: projection
- `Win + R`: run
- `Win + Q/S`: cortana search
- `Win + number`: run taskbar program
- `Win + Shift + S`: take screenshot

### Share folder/drive with iOS

#### Server setting

##### For folder
- 文件属性，高级共享，check 共享此文件夹，改共享名
- 权限 everyone 全部打钩
- 共享 下来菜单 选择everyone

##### For drive
- 磁盘属性，高级共享，check 共享此文件夹，改共享名
- 权限 everyone 全部打钩
- 在资源管理器下拉功能区，选择映射网络驱动器
- Drive随意选择，folder填写`\\your_ip_address\共享名`
- check both reconnect at sign-in, connect using different credentials

#### iOS setting

In `Files` app, click `Connect to Server`, put in `smb://your_ip_address`.

#### Tips

- Drap and shake one window to minimize all other windows

### Matlab
- Cheat Matlab to use UTF-8 instead of GBK
- bin folder `lcdata.xml` file

```xml
</lcdata>
    <codeset>
        <encoding name="UTF-8">  
            <encoding_alias name="utf8"/>  
            <encoding_alias name="GBK"/>  
        </encoding>
    </codeset>
</lcdata>
```

### diskpart
- Run 'diskpart'
- list disk
- select disk
- clean

### Emacs
- Add c:\emacs\bin to System variables Path
- Add c:\Home to System variable, HOME: C:\Home
