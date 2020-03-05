# Get git branch on the prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\e[32m\e[1m\u@\h\e[0m \w\e[1m\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \n$ "

# my custom aliases
alias BASHRC='gedit ~/MaConfig/.bashrc 2> /dev/null'
alias SOURCEBASHRC='source ~/MaConfig/.bashrc'
alias xclip="xclip -selection c"
alias CLEARTHUMBNAILS="rm -rf ~/.cache/thumbnails/"
alias SWAPRESET="sudo swapoff -a ; sudo swapon -a"
alias PULSEAUDIO="pacmd unload-module module-udev-detect && pacmd load-module module-udev-detect"

PATH+=:$HOME/.cargo/bin
PATH+=":~/MaConfig"

source /home/philippe/sara_install/script/setup.sh
