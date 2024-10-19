# MARK: General

alias v="find . -type f -not -path './.git/*' | fzf-tmux -p --reverse | xargs nvim"
alias t="tmux new -As 0_main"
alias c="clear"
alias nvimconf="cd ~/.config/nvim/ && nvim ."
alias aliases="nvim $ZSH_CUSTOM/aliases.zsh"
alias dt="cd ~/Desktop"
alias dl="cd ~/Downloads"
alias pp="cd \`find ~/Projects -maxdepth 1 | fzf\`"
alias l="lsd -1 --icon auto --git"
alias ll="lsd -l --icon auto --git"
alias lst="lsd --tree --depth 2 --icon auto --git"
alias xclunaria="open ~/Projects/lunaria_apps/Lunaria/Lunaria.xcodeproj && cd ~/Projects/lunaria_apps/Lunaria"
alias lit="cd ~/Projects/little_leaf/little-leaf-v3"
alias litart="cd ~/Projects/little_leaf/little-leaf-v3/Assets/Art"
alias fzfo='open "$(fzf)"'
alias lg="lazygit"

# MARK: Apps

alias sim="open -a Simulator.app"
alias xc="open . -a Xcode"
function quit() {
  osascript -e "tell application \"$1\" to quit" 2> /dev/null
}

# Checks if an app is running
function isrunning() {
  ps aux | grep -v grep | awk '{ print $11 }' | grep -c -i "$1" &> /dev/null
}

# Opens godot if not running, otherwise brings it to the foreground
function ogodot () {
    if $(isrunning 'Godot'); then
        osascript -e "tell application \"Godot\" to activate"
    else
        open ./project.godot
    fi
}

# MARK: Projects
alias casdev="tmuxp load -y casss-dev"
alias lunaria="tmuxp load -y lunaria"
alias grocery="tmuxp load -y grocery"
alias little="tmuxp load -y little_leaf"

# MARK: SPM

alias s="swift"
alias spres="swift package resolve"
alias sprhh="swift package resolve"

# MARK: Poetry

alias poetbump="~/Projects/cli/version_bumpers/poetry_bumper.py"
alias pv="poetry run nvim"

alias pi="ssh pi@raspberrypi.local"

function bl () {
    if [[ `blueutil -p` == '0' ]]; then
        blueutil -p 1
        echo "Bluetooth ON"
    else
        blueutil -p 0
        echo "Bluetooth OFF"
    fi
}

alias listbl="system_profiler SPBluetoothDataType"

function rms () {
    mv -nv "$1" "$HOME/.Trash/."
}

alias uploadmint="mintscrape -v transactions -u"

function mksc () {
    echo '#!/usr/bin/env python' >> "$1.py"
    chmod +x "$1.py"
}

# DOCKER
# alias dockerrmall="docker rm `docker container ls -aq`"
# alias dockerrmi="docker rmi `docker images -f 'dangling=true' -q`"

alias xcbs="cd $HOME/Library/Caches/xcode-build-server"
