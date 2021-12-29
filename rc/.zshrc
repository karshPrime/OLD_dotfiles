# Prerequisite: OhMyZSH and PowerLevel0k

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/user33/.config/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
export LANG=en_GB.UTF-8

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Functions
pkgback() {pacman -Qq > ~/Dev/applist/$1 }
cmd() { man -k $1|sed "s/ - \(.*\)/ - \o033[35m\1\o033[0m/"; }
cdir() {mkdir $1 && cd $1}
look() {$2 $3 $4 $5 | grep -i $1 }

# Aliases
alias clean='yay -Scc'
alias scan='sudo clamscan -rio /'
alias batcap="upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep capacity | awk '{print \$2}'"
alias cell='firejail --list'
alias update='yay; sudo freshclam'

alias pkgadd='sudo pacman -S'
alias pkgmake='makepkg -sirc'
alias pkgrm='sudo pacman -Rns'
alias pkgsearch='sudo pacman -Ss'
alias pkglist='pacman -Qs --color=always | less'
alias pkgcheck='pacman -Qq --color=always | grep -i'
alias pkgcount='pacman -Qq | wc -l'

alias nv='prime-run'
alias ss='sudo systemctl'
alias v='vim'
alias sv='sudo vim'

alias tedit='vim ~/.zshrc'
alias tupdate='source ~/.zshrc'