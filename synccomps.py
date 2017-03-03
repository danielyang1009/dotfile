from shutil import copyfile

syncfiles = [
        '.tmux.conf',
        '.vimrc',
        '.zshrc',
        '.spacemacs'
        ]

for i in syncfiles:
    copyfile('./'+i, '/home/dyang/'+i)
