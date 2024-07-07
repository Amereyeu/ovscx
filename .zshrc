
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh


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










