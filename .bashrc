# Get git branch on the prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\e[32m\e[1m\u@\h\e[0m \w\e[1m\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \n$ "

# my custom aliases
alias BASHRC='gedit ~/MaConfig/.bashrc 2> /dev/null'
alias SOURCEBASHRC='source ~/MaConfig/.bashrc'
alias xclip="xclip -selection c"
alias 'HISTORY=history | grep'


function SSH_ADD_TO_OTHER(){
	echo 'cat .ssh/id_rsa.pub | ssh '$@' "cat >> .ssh/authorized_keys"'
}

alias SSH_ROBOT='ssh philippe-robot'
alias SSH_KODI='ssh root@philippe-kodi'



alias CLEARTHUMBNAILS="rm -rf ~/.cache/thumbnails/"
alias SWAPRESET="sudo swapoff -a ; sudo swapon -a"
