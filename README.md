# dotfiles

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



## Mac tips
### Show hidden file
- defaults write com.apple.finder AppleShowAllFiles YES
- killall Finder

### Check out file info of multiple files
- Command + Option + i (instead of Command + i)

### conda env with fish shell
```bash
# get conda location <CONDA_ROOT>
conda info --root 
# add line to ~/.config/fish/config.fish
# source <CONDA_ROOT>/etc/fish/conf.d/conda.fish
```

### Add tuna mirror
`/Library/Application Support/pip/pip.conf` if not exists, create one

Add following to file
```
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
```
### VScode Vim autoswitch input method

1. Install `im-select`
```bash
curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh
```

2. Add to setting json file 
```json
"vim.autoSwitchInputMethod.enable": true,
"vim.autoSwitchInputMethod.defaultIM": "com.apple.keylayout.US",
"vim.autoSwitchInputMethod.obtainIMCmd": "/usr/local/bin/im-select",
"vim.autoSwitchInputMethod.switchIMCmd": "/usr/local/bin/im-select {im}"
```
[Ref](https://github.com/VSCodeVim/Vim#input-method)

## Windows 
### diskpart
- Run 'diskpart'
- list disk
- select disk
- clean
### Emacs 
- Add c:\emacs\bin to System variables Path
- Add c:\Home to System variable, HOME: C:\Home
