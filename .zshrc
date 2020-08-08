#Path
export ZSH="/home/sinner/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
#else
#  export EDITOR='mvim'
#fi


#
# ALIAS 
#
# CONFIGS
alias zshcfg="vim ~/.zshrc"
alias ohmyzshcfg="vim ~/.oh-my-zsh"
alias i3cfg="vim ~/.config/i3/config"
alias termitecfg="vim ~/.config/termite/config"
alias jupytercfg="vim ~/.jupyter/jupyter_notebook_config.py"
alias vimcfg="vim ~/.vimrc"
alias rangercfg="vim ~/.config/ranger/rc.conf"
alias newsboaturls="vim ~/.newsboat/urls"
alias polybarcfg="vim ~/.config/polybar/config"
alias dunstcfg="vim ~/.config/dunst/dunstrc"
alias yeet_old_versions="sudo pacman -Sc"
alias yeet_cache="rm -rf ~/.cache/*"
alias yeet_orphans="sudo pacman -Rns \$(pacman -Qtdq)"

# Jupyter Stuff
alias nb='f() {jupyter notebook $1 </dev/null &>/dev/null &  };f'
alias nbcompyle='f() { jupyter nbconvert --to python $@;f'

# NAVIGATION
alias wp="cd ~/img/wallpapers"
alias scripts="cd ~/.local/bin/"
alias libs="cd ~/.local/lib/"

# This creates a new window directly from terminal commands --quietly
alias spawn='f() { tmux new -d $@ };f'

# run dmenu
alias dmenu='dmenu_run -h 36 -nb "#000000" -fn "iosevka light:bold" -nf "#ffb52a" -sb "#FF8c69" -sf "#000000"'

alias newsboatcategories='grep "\"---" ~/.newsboat/urls | while read OUTPUT; do notify-send $OUTPUT; done'

bindkey -v
