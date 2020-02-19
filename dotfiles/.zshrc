##########
# prezto #
##########

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#############
# powerline #
#############
powerline-daemon -q
. /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

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

#######
# Run #
#######

ll
