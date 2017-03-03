from shutil import copyfile


syncfiles = [
        '.tmux.conf',
        '.vimrc',
        '.zshrc',
        '.spacemacs'
        ]

for i in syncfiles:
    copyfile('/home/dyang/'+i, '/home/dyang/dotfiles/'+i)
