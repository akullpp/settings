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
alias g='gitui'
alias gs='git st'
alias gp='git pull'
alias gu='git add . && git commit -m "Update" && git push'
alias check='shellcheck'

alias editorconfig='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.editorconfig > .editorconfig'
alias gitattributes='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.gitattributes > .gitattributes'
alias linstagedrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.lintstagedrc > .lintstagedrc'
alias prettierrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.prettierrc > .prettierrc'

#######
# Run #
#######

. /opt/homebrew/opt/asdf/libexec/asdf.sh
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$(go env GOPATH)/bin:/Library/TeX/texbin/:$HOME/.poetry/bin:$PATH"
export AWS_PROFILE=
export HASURA_ADMIN_SECRET=
ll
