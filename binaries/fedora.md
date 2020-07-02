# dnf

```
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install \
  akmod-nvidia \
  awscli \
  emacs \
  bat \
  exa \
  podman-compose \
  git \
  git-credential-libsecret \
  glances \
  httpie \
  jq \
  keepassxc \
  p7zip \
  tldr \
  zsh \
  curl \
  autojump-zsh \
  gnome-tweaks \
  ffmpeg \
  snapd
  
sudo ln -s /var/lib/snapd/snap /snap
sudo service enable snapd
sudo service start snapd

sudo reboot
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
```

# Snap

```
sudo snap install code --classic
sudo snap install kubectl --classic
sudo snap install insomnia --classic
sudo snap install dbeaver-ce --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install zoom-client --classic
```
