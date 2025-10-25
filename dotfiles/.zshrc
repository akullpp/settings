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

alias cap='bat -p'
alias cat='bat'
alias cd='z'
alias check='shellcheck'
alias df='duf'
alias g='gitui'
alias gp='git pull'
alias grep='rg'
alias gs='git st'
alias gu='git add . && git commit -m "Update" && git push'
alias kill='murder'
alias len='wc -l'
alias ll='eza -l'
alias ls='eza'
alias man='tldr'
alias mkdir='mkcd'
alias ps='procs'
alias rm="trash"
alias src='source ~/.zshrc'
alias top='glances'
alias uuid='uuidgen'
alias v='nvim'

alias editorconfig='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.editorconfig > .editorconfig'
alias gitattributes='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.gitattributes > .gitattributes'
alias linstagedrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.lintstagedrc > .lintstagedrc'
alias prettierrc='http get https://raw.githubusercontent.com/akullpp/settings/master/defaults/.prettierrc > .prettierrc'

###############
# Environment #
###############

path_dirs=(
    "/opt/bin"
    "/opt/homebrew/opt/gnu-tar/libexec/gnubin"
    "$HOME/.asdf/shims"
    "$HOME/.local/bin"
)
for dir in "${path_dirs[@]}"; do
    if [[ -d "$dir" ]]; then
        export PATH="$dir:$PATH"
    fi
done

export EDITOR="nvim"

#######
# Run #
#######

ll
