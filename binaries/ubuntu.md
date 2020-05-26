# apt

```
sudo apt install bat docker docker-compose git glances httpie jq keepassxc p7zip tldr zsh curl autojump gnome-tweaks
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

# asdf

```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
source ~/.zshrc

asdf plugin add java
asdf plugin add gradle
asdf plugin add maven
asdf plugin add nodejs
asdf plugin add golang

bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf install java adopt-openjdk-11.0.7+10_openj9-0.20.0
asdf install java adopt-openjdk-8u252-b09_openj9-0.20.0
asdf global java adopt-openjdk-11.0.7+10_openj9-0.20.0

asdf install nodejs 12.17.0
asdf global nodejs 12.17.0

asdf install golang 1.14.3
asdf global golang 1.14.3
```

# exa

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install exa
```

# Snap

```
dbeaver-ce
IDEA Ultimate
Visual Studio Code
```
