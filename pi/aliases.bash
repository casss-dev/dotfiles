alias aliases="nvim ~/.bash_aliases"

alias ..="cd .."
alias ...="cd ../.."
alias c=clear
alias reshell="exec $SHELL"
alias l="ls -1"
alias ll="ls -la"
alias pp="cd \$(find ~/projects -maxdepth 1 | fzf)"
alias x="exit"

# Neovim
alias nvimconf="nvim ~/.config/nvim/"
alias v="fzf | nvim"
alias pv="fzf | xargs poetry run nvim --"

# Tmux
alias d="tmux detach"
alias t="tmux new-session -A -s 0_main"

ppt () {
	local proj=$(find ~/projects -maxdepth 1 | fzf)
	local filename=$(basename proj)
	tmux detach 2> /dev/null
	tmux new-session -A -s "$filename"
}

# Docker
alias docker="sudo docker"

# Git
alias gst="git status"
alias ga="git add"
alias gcmsg="git commit -m"
alias gp="git push"
alias glg="git log --stat"
alias gd="git diff"
alias gl="git pull"
alias gf="git fetch"

# Projects
alias chase="cd ~/projects/chase_scraper"

alias ts="sudo tailscale"

alias servelunaria="sudo tailscale serve --https=8443 --set-path /lunaria 8000"
alias servegrocery="sudo tailscale serve --https=443 --set-path /grocery 8080"
