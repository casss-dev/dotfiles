# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

source_if_exists () {
	if [ -r "$1" ]; then
		source "$1"
	fi
}

source_if_exists $HOME/.env.sh

# Path to your oh-my-zsh installation.
export ZSH_CUSTOM="$HOME/dotfiles/oh-my-zsh/custom/"
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"
# jonathan
# agnoster

# Stuff I added
autoload -U edit-command-line
zle -N edit-command-line
INSERT_MODE_INDICATOR="%F{yellow}+%f"
bindkey -M viins 'kj' vi-cmd-mode

export EDITOR="nvim"
export VISUAL="nvim"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z vi-mode zsh-syntax-highlighting zsh-autosuggestions web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Created by `pipx` on 2023-11-30 13:25:12
export PATH="$PATH:$HOME/.local/bin"

# For postgres on cli, 15 is used for sync with supabase's current version 
# Thu Nov 30 07:54:18 CST 2023
export PATH="$PATH:/opt/homebrew/opt/postgresql@15/bin"

source_if_exists ~/.fzf.zsh

eval "$(starship init zsh)"

export PGPASSWORD=Buva8NpUL5fgcB6j

# export SWIFT_TOOLCHAIN_PATH=$(xcrun --toolchain swift --find sourcekit-lsp)

source_if_exists /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source_if_exists /opt/homebrew/opt/chruby/share/chruby/auto.sh
source_if_exists /usr/local/opt/chruby/share/chruby/chruby.sh
source_if_exists /usr/local/opt/chruby/share/chruby/auto.sh

# tmuxp
export DISABLE_AUTO_TITLE='true'

export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8

# Lazygit
local MY_LG_CONFIG="$HOME/Library/Application Support/lazygit/config.yml"
local MY_LG_THEME="$DOTFILES/lazygit/themes/catppuccin/themes-mergable/mocha/rosewater.yml"
export LG_CONFIG_FILE="$MY_LG_CONFIG,$MY_LG_THEME"
