##########
# prezto #
##########

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#######
# nvm #
#######

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

###########
# Aliases #
###########

alias fu='fuck'
alias ls='exa'
alias ll='exa -l'
alias cat='bat'
alias ping='prettyping'
alias preview='fzf --preview "bat --color \"always\" {}"'
alias man='tldr'
alias top='glances'
alias json='jqn'

###############
# Environment #
###############

export PATH=~/go-workspace/bin:~/go/bin:$PATH
export GOPATH=~/go-workspace

#######
# Run #
#######

ll
