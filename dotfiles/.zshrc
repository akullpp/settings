##########
# prezto #
##########

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

##########
# zoxide #
##########

eval "$(zoxide init zsh)"

############
# the fuck #
############

eval $(thefuck --alias)
alias fu='fuck'

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
alias sed='sd'
alias ps='procs'
alias cd='z'

alias editorconfig='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.editorconfig > .editorconfig'

#######
# Run #
#######

. /opt/homebrew/opt/asdf/libexec/asdf.sh
export PATH="/opt/protoc-3.11.4/bin:/Users/akull/.local/bin:$HOME/.poetry/bin:$PATH"
ll
