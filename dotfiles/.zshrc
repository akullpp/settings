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
alias ls='eza'
alias ll='eza -l'
alias cat='bat'
alias cap='bat -p'
alias man='tldr'
alias top='glances'
alias grep='rg'
alias ps='procs'
alias cd='z'
alias v='nvim'
alias g='gitui'
alias gs='git st'
alias gp='git pull'
alias gu='git add . && git commit -m "Update" && git push'
alias check='shellcheck'

alias editorconfig='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.editorconfig > .editorconfig'
alias gitattributes='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.gitattributes > .gitattributes'
alias linstagedrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.lintstagedrc > .lintstagedrc'
alias prettierrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.prettierrc > .prettierrc'

###############
# Environment #
###############

export AWS_PROFILE=""
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""

#######
# Run #
#######

. /opt/homebrew/opt/asdf/libexec/asdf.sh
ll
