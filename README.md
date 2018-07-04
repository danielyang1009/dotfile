# dotfiles
## Mac tips
### Show hidden file
- defaults write com.apple.finder AppleShowAllFiles YES
- killall Finder

### Check out file info of multiple files
- Command + Option + i (instead of Command + i)

### Add tuna mirror
`/Library/Application Support/pip/pip.conf` if not exists, create one

Add following to file
```
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
```

## Windows 
### diskpart
- Run 'diskpart'
- list disk
- select disk
- clean
### Emacs 
- Add c:\emacs\bin to System variables Path
- Add c:\Home to System variable, HOME: C:\Home
