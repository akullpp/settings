# dnf

1. Upgrade

```
sudo dnf upgrade
```

2. Install base dependencies

```
sudo dnf install awscli bat exa git git-credential-libsecret glances httpie jq keepassxc p7zip tldr zsh curl autojump-zsh gnome-tweaks vim util-linux-user
```

3. Set up repositories

```
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo http get https://raw.githubusercontent.com/akullpp/settings/master/binaries/vscode.repo > /etc/yum.repos.d/vscode.repo
sudo http get https://raw.githubusercontent.com/akullpp/settings/master/binaries/kubernetes.repo > /etc/yum.repos.d/kubernetes.repo
```

4. Install extended dependencies

```
sudo dnf install akmod-nvidia code ffmpeg mpv
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
asdf plugin add maven
asdf plugin add nodejs
asdf plugin add golang

bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
```

# Flatpak

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.dbeaver.DBeaverCommunity
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate
flatpak install flathub us.zoom.Zoom
```
