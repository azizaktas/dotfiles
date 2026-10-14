# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
source /etc/profile.d/vte.sh 2>/dev/null
enable flyline 2>/dev/null || enable -f "/home/kral/.local/lib/libflyline.so" flyline
flyline mouse --mode disabled
flyline --enable-extended-key-codes false
eval "$(starship init bash)"

# DNF5
alias di='sudo dnf5 install'
alias dr='sudo dnf5 remove'
alias du='sudo dnf5 upgrade'
alias sdur='sudo dnf5 upgrade --refresh'
alias ds='dnf5 search'
alias dii='dnf5 info'
alias dlu='dnf5 list --updates'
alias drepo='dnf5 repolist'
alias dclean='sudo dnf5 clean all'
alias dcheck='dnf5 check'
alias dhistory='dnf5 history list'

# RPM
alias rpi='rpm -qi'
alias rpl='rpm -ql'
alias rpv='rpm -q'
alias rpf='rpm -qf'
alias rpa='rpm -qa'

# Flatpak
alias fi='flatpak install'
alias fr='flatpak uninstall'
alias fu='flatpak update'
alias fs='flatpak search'
alias fl='flatpak list'

# Files
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lt='ls -lht'
alias ltr='ls -lhtr'
alias df='df -h'
alias du1='du -h --max-depth=1'
alias tree='tree -F -A'

# Systemd
alias s='sudo systemctl'
alias ss='sudo systemctl status'
alias sr='sudo systemctl restart'
alias se='sudo systemctl enable'
alias sd='sudo systemctl disable'
alias j='journalctl'
alias jfu='journalctl -f'

# Network
alias ip4='ip -4 addr'
alias ip6='ip -6 addr'
alias ports='ss -tulpn'
alias pingg='ping -c 4 1.1.1.1'

# Processes
alias psg='ps aux | grep -i'
alias k='kill'
alias k9='kill -9'

# Git
alias g='git'
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gpl='git pull'
alias gb='git branch'
alias gco='git checkout'
alias gst='git stash'
alias gstp='git stash pop'

# Zsh/Bash
alias reload='source ~/.bashrc'
alias als='grep "^alias " ~/.bashrc'

# Fedora
alias fw='sudo fwupdmgr refresh && sudo fwupdmgr get-updates'
alias fwupdate='sudo fwupdmgr update'
alias selinux='sestatus'

alias cc='clear'
