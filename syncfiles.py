from shutil import copyfile


syncfiles = [
        '.tmux.conf',
        '.vimrc',
        '.zshrc',
        '.spacemacs'
        ]

for i in syncfiles:
    copyfile('/home/daniel/'+i, '/home/daniel/dotfiles/'+i)
