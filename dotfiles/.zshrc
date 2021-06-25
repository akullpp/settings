##########
# prezto #
##########

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

########
# asdf #
########

. $HOME/.asdf/asdf.sh

##########
# zoxide #
##########

eval "$(zoxide init zsh)"

###########
# Aliases #
###########

alias df='duf'
alias ls='exa'
alias ll='exa -l'
alias cat='bat'
alias man='tldr'
alias top='glances'
alias lg='lazygit'
alias grep='rg'
alias find='fd'
alias sed='sd'
alias ps='procs'
alias cd='z'

alias editorconfig='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.editorconfig > .editorconfig'

#######
# Run #
#######

source /etc/profile.d/vte.sh
ll
