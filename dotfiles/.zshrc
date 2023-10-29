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
alias st='git st'
alias check='shellcheck'

alias editorconfig='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.editorconfig > .editorconfig'
alias gitattributes='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.gitattributes > .gitattributes'
alias linstagedrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.lintstagedrc > .lintstagedrc'
alias prettierrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.prettierrc > .prettierrc'

#######
# Run #
#######

. /opt/homebrew/opt/asdf/libexec/asdf.sh
export PATH="$(go env GOPATH)/bin:/Library/TeX/texbin/:$HOME/.poetry/bin:$PATH"
export AWS_PROFILE=
export HASURA_ADMIN_SECRET=
export PNPM_HOME="/Users/akull/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
ll
