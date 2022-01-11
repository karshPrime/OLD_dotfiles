# github.com/ut-kr/Dotfiles/blob/main/rc/.zshrc

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.config/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)

source $ZSH/oh-my-zsh.sh
export LANG=en_GB.UTF-8

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybinds
bindkey -s '^[z' 'clear; $HOME/Dev/Scripts/Fetch/header_fetch.sh^M'
bindkey -s '^[x' '$HOME/Dev/Scripts/Fetch/tinfo.sh^M'

bindkey -s '^[n' 'git commit -m "🍩 Create '
bindkey -s '^[m' 'git commit -m "🪐 Update '
bindkey -s '^[k' 'git status^M'
bindkey -s '^[l' 'git add '

# Functions
pback() {rpm -qa > $HOME/Dev/applist/$1 }
cmd() { man -k $1|sed "s/ - \(.*\)/ - \o033[35m\1\o033[0m/"; }
cplus() {FILE_NAME=$(basename "$1" .cpp) ;g++ -o $FILE_NAME $1; ./$FILE_NAME}
cdir() {mkdir $1 && cd $1}
look() {$2 $3 $4 $5 $6 $7 $8 $9 $10 | grep -i $1 }

grem() { git update-index --assume-unchanged $1 && rm $1 }
gremu() { git update-index --no-assume-unchanged $1 && git restore $1 }

# Aliases
alias clean='sudo dnf autoremove'
alias scan='sudo clamscan -r /'
alias batcap="upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep capacity | awk '{print \$2}'"
alias cells='firejail --list'
alias update='sudo dnf update'

alias padd='sudo dnf install'
alias prem='sudo dnf remove'
alias plook='dnf search'
alias plist='dnf list | less'
alias pgot='rpm -qa | grep -i'
alias pcount='rpm -qa | wc -l'

alias nv='prime-run'
alias ss='sudo systemctl'
alias v='nvim'
alias vim='nvim' # old habit
alias sv='sudo nvim'
alias m='mousepad'
alias cell='firejail'

alias bandwhich='sudo bandwhich'
alias fonts='fc-list | cut -f2 -d: | sort -u'
alias freshclam='sudo systemctl stop clamav-daemon.service; systemctl start clamav-daemon.service; sudo freshclam'
alias black='python -m black'
alias kssh='kitty +kitten ssh'
alias greml="git ls-files -v|grep '^h'"

alias tedit='nvim $HOME/.zshrc'
alias tupdate='source $HOME/.zshrc'

