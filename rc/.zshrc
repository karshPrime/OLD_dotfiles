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

# Aliases
alias install='sudo pacman -S'
alias trash='sudo pacman -Rns'
alias look='pacman -Ss'
alias got='pacman -Qs | more'
alias pls='sudo'
alias clean='sudo pacman -Sc'
alias update='sudo pacman -Syyu'
alias sirc='makepkg -sirc'
alias nvidia='prime-run'
alias mem="sudo sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches' && echo '\nCleared RAM'"
alias bloat='pacman -Qqdt | wc -l && pacman -Qqdt && sudo pacman -Rs $(pacman -Qqtd)'
alias pkgback='pacman -Qq > ~/Dev/AppList/packages_$(date | cut -c 12-20)'
alias container='firejail --list'
alias fonts='fc-list | cut -f2 -d: | sort -u'
alias tedit='vim ~/.zshrc'
alias tupdate='source ~/.zshrc'
