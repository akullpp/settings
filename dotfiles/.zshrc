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

############
# autojump #
############

. /usr/share/autojump/autojump.zsh

###########
# Aliases #
###########

alias ls='exa'
alias ll='exa -l'
alias cat='bat'
alias man='tldr'
alias top='glances'
alias editorconfig='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.editorconfig > .editorconfig'
alias lg='lazygit'

#######
# Run #
#######

export GOPATH=/home/akull/Projects/go
source /etc/profile.d/vte.sh
ll
