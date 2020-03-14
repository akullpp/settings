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
. $HOME/.asdf/completions/asdf.bash

############
# autojump #
############

. /etc/profile.d/autojump.zsh

###########
# thefuck #
###########

eval $(thefuck --alias)

##################
# gnome-terminal #
# ################

. /etc/profile.d/vte.sh

###########
# Aliases #
###########

alias fu='fuck'
alias ls='exa'
alias ll='exa -l'
alias cat='bat'
alias f='fzf --preview "bat --color \"always\" {}"'
alias man='tldr'
alias top='glances'
alias editorconfig="http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.editorconfig > .editorconfig"

#######
# Run #
#######

ll
