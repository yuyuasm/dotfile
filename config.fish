if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PROXY "http://192.168.10.2:7890"
export http_proxy=$PROXY
export https_proxy=$PROXY
export all_proxy=$PROXY
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias py=python3
alias rg=ranger
alias chrome="chromium --proxy-server=$PROXY"

eval "$(zellij setup --generate-auto-start fish)"

export XMODIFIERS=@im=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5

export EDITOR=nvim

set -x PATH $PATH ~/.local/bin/
set -x PATH $PATH /usr/local/mongodb/bin/
export MONGODB_HOME=/usr/local/mongodb/

alias apti="sudo apt install $0"
alias bat="batcat $0"
alias cls="clear"
