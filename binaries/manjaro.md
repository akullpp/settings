# Pamac

```
pamac install brave mpv transmission dbeaver aws-cli bat exa glances httpie jq keepassxc tldr micro kubectl docker docker-compose calibre
pamac build autojump google-chrome lens-bin zoom visual-studio-code-bin brother-hll2340dw archiver dropbox
```

# Docker

```
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
```

# prezto

```
zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh
```

# dotfiles

```
http get https://raw.githubusercontent.com/akullpp/settings/master/dotfiles/.gitconfig > ~/.gitconfig
http get https://raw.githubusercontent.com/akullpp/settings/master/dotfiles/.zpreztorc > ~/.zpreztorc
http get https://raw.githubusercontent.com/akullpp/settings/master/dotfiles/.zshrc > ~/.zshrc
```

# asdf

```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
source ~/.zshrc

asdf plugin add java
asdf plugin add gradle
asdf plugin add nodejs
asdf plugin add golang

bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
```
