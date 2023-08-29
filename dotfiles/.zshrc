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
# Bindings #
############

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

###########
# Aliases #
###########

alias df='duf'
alias ls='exa'
alias ll='exa -l'
alias cat='bat'
alias cap='bat --plain --paging=never'
alias man='tldr'
alias top='glances'
alias grep='rg'
alias ps='procs'
alias cd='z'
alias v='nvim'
alias g='gitui'

alias editorconfig='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.editorconfig > .editorconfig'
alias gitattributes='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.gitattributes > .gitattributes'
alias linstagedrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.lintstagedrc > .lintstagedrc'
alias prettierrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.prettierrc > .prettierrc'

#######
# Run #
#######

. /opt/homebrew/opt/asdf/libexec/asdf.sh
ll
