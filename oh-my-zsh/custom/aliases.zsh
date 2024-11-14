# MARK: General

alias v="find . -type f -not -path './.git/*' -not -path './.build/*' | fzf-tmux -p --reverse | xargs nvim"
alias t="tmux new -As 0_main"
alias c="clear"
alias nvimconf="cd ~/.config/nvim/ && nvim ."
alias tmuxconf="cd $DOTFILES && nvim ./tmux/tmux.conf"
alias aliases="cd $ZSH_CUSTOM && nvim '$ZSH_CUSTOM'aliases.zsh"
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
alias gundo="git reset --soft HEAD~1"

export OBS_DIR="~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/cdev"
alias obs="cd $OBS_DIR && nvim ."

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

function arcicon() {
    icons=("original" "candy" "hologram" "neon" "flutedGlass" "schoolbook" "colorful")
    which_icon=$(printf '%s\n' "${icons[@]}" | fzf)
    defaults write company.thebrowser.Browser currentAppIconName "$which_icon"
    echo "Set Arc app icon to '$which_icon'"
}

# MARK: Godot

alias godot='/Applications/Godot.app/Contents/MacOS/Godot'

function gut () {
    # -d: run godot in debug mode
    # -s: godot should run script
    # --path: godot should treat directory as root of the project
    godot --headless -d -s --path "$PWD" addons/gut/gut_cmdln.gd $@
    echo $?
}

# Opens godot if not running, otherwise brings it to the foreground
function ogo () {
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
alias dot="cd $DOTFILES"

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

function tnew () {
    name=$(basename `pwd`)
    tmux new -s "$name" -d
    tmux switch-client -t "$name"
}

# DOCKER
# alias dockerrmall="docker rm `docker container ls -aq`"
# alias dockerrmi="docker rmi `docker images -f 'dangling=true' -q`"

alias xcbs="cd $HOME/Library/Caches/xcode-build-server"
