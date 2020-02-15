##########
# prezto #
##########

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

########
# asdf #
########

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

############
# autojump #
############

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

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

###############
# Environment #
###############

export PATH=~/go-workspace/bin:~/go/bin:$PATH
export GOPATH=~/go-workspace
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

#######
# Run #
#######

ll
