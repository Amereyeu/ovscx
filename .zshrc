# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
zstyle ':omz:update' mode auto      # update automatically without asking
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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
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

alias show="colorls -lX -p -lh -g"
alias cl="clear"
alias aa="colorls -1 -X"
alias lc='colorls -lA --sd'
alias ls="colorls -X"
alias dd="cd;Dokumenty/;ls"
alias gopug="cd;Dokumenty/web/pug;gulp watch"
alias upwp="cd;Dokumenty/web/wpdocker;docker compose up -d"
alias uptech="cd;Dokumenty/web/wptech;docker compose up -d"
alias godown="docker compose stop"
alias vite="npm run dev -- --host"
alias godoj="cd;Dokumenty/web/doj;vite"
alias gokurz="cd;Dokumenty/web/kurzyup;gulp"
alias godemo="cd;Dokumenty/web/react-wp-demo;vite"
alias gocv="cd;Dokumenty/web/online-cv;vite"
alias goonline="cd;Dokumenty/web/online;vite"
alias gotech="cd;Dokumenty/web/react-tech;vite"
alias gonextwp="cd;Dokumenty/web/next13-wp;dev"
alias chef="cd;Dokumenty/web/recipe;vite"
alias gs="git status"
alias gss="git status -s"
alias ga="git add ."
alias gc="git commit -am $1"
alias gp="git push"
alias gpl="git pull"
alias lg="lazygit"
alias dev="npm run dev"
alias build="npm run build"
alias update="sudo nala update"
alias list="nala list --upgradable"
alias upgrade="sudo nala upgrade"
alias scripts="cd;cd ..;owner/.local/share/my-scripts;ls -l"
alias website="cd;cd ..;owner/.local/share/my-scripts/make-project.sh"
alias als="cl;cd;cd ..;owner/.local/share/my-scripts/alias.sh"
alias reload="source ~/.zshrc"
alias mountd="sudo mount -t cifs //192.168.2.17/stuff /mnt/ -o domain=WORKGROUP,username=test"
alias mountk="sudo mount -t cifs //192.168.2.17/kdisc /mnt/ -o domain=WORKGROUP,username=test"
alias mountftp=" curlftpfs all:1234@banik.asuscomm.com/PATRIOT/RT /home/owner/ftp/"
alias windown="net rpc shutdown -f -t 0 -C 'shutting down from Linux' -U test%test -I 192.168.2.17"
alias dup="docker compose up -d"
alias ddown="docker compose down"
alias nv="nvim"



# nala instead of apt
apt() { 
  command nala "$@"
}
sudo() {
  if [ "$1" = "apt" ]; then
    shift
    command sudo nala "$@"
  else
    command sudo "$@"
  fi
}




# power10k theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh




# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




#colorls
source $(dirname $(gem which colorls))/tab_complete.sh




# pnpm
export PNPM_HOME="/home/owner/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end




# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"




# neovim switch
alias lv="NVIM_APPNAME=LazyVim nvim"
alias nvim-astro="NVIM_APPNAME=AstroVim nvim"

function vv() {
  items=("LazyVim" "AstroVim" "default")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Select Neovim  " --height=50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo " No Vim editor selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}




# default editor in terminal
export EDITOR="nvim"










