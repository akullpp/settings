# Pamac

Enable AUR support in pamac: Add/Remove Software > Settings > Preferences > Third Party > Enable AUR support

```
pamac install \
  archiver \
  aws-cli-v2-bin \
  bat \
  bloomrpc-bin \
  brave-browser \
  calibre \
  dbeaver \
  dive \
  docker \
  docker-compose \
  duf \
  exa \
  fd \
  fzf \
  git-delta \
  glances \
  httpie \
  insomnia-bin \
  intellij-idea-ultimate-edition \
  jq \
  keepassxc \
  kubectl \
  lazygit \
  lens-bin \
  micro \
  vlc \
  postgresql \
  procs \
  sd \
  steam-native \
  tldr \
  transmission-gtk \
  visual-studio-code-bin \
  zoom \
  zoxide
```

```
pamac install spotify
```

```
pamac install mullvad-vpn
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
asdf plugin add python
asdf plugin add nodejs
asdf plugin add golang

bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
```

# Misc

```
python -m pip install --upgrade pip
curl -sSL https://install.python-poetry.org | python3 -
npm i -g npm npm-check-updates create-react-app
```
