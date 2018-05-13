# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/dragneel/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k"

zstyle ':completion:*' rehash true

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Some useful alias to make your life easier :)
##
#neofetch
alias ls='ls --color=auto'
neofetch -D "Arch Linux"


#eval `dircolors ~/.dir_colors/dircolors`

autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
alias help=run-help

source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins+=(zsh-completions)
autoload -U compinit && compinit
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme


POWERLVEL9K_MODE='nerdfont-complete'

## Replace full user in the terminal context with an icon
##
local user_symbol="\uF007 $"
    if [[ $(print -P "%#") =~ "#" ]]; then
        user_symbol = "\uF007 #"
    fi
POWERLEVEL9K_CONTEXT_TEMPLATE=$user_symbol

##  My Power Level 9K config
##
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir context rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator dir_writable time)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_from_right
POWERLEVEL9K_SHORTEN_DELIMITER=..
POWERLEVEL9K_HIDE_BRANCH_ICON=false
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
POWERLEVEL9K_VCS_HIDE_TAGS=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=8
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M} \uF017 '

POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true

## My Power Level 9K colors
##
#POWERLEVEL9K_COLOR_SCHEME=light

POWERLEVEL9K_DIR_HOME_BACKGROUND=red
POWERLEVEL9K_DIR_HOME_FOREGROUND=white
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=red
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=white
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=yellow
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=black
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=red
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=white

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=magenta
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=white

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=yellow
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=black
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=yellow
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=black
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=yellow
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=black

POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=red
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=white

POWERLEVEL9K_STATUS_OK_BACKGROUND=blue
POWERLEVEL9K_STATUS_OK_FOREGROUND=black
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=yellow
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=black

POWERLEVEL9K_TIME_BACKGROUND=cyan
POWERLEVEL9K_TIME_FOREGROUND=black

##Laravel
PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH
