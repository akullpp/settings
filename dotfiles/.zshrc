# Antigen
source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen theme agnoster

antigen bundle git
antigen bundle npm
antigen bundle command-not-found
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

antigen apply

# Aliases
alias top="htop"
alias find="fd"
alias man="tldr"
alias cat="bat"
