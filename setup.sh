#!/bin/bash

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

formulae=(
  coreutils
  moreutils
  findutils
  gnu-sed --default-names
  wget --enable-iri
  vim --override-system-vi
  homebrew/dupes/grep
  homebrew/dupes/screen
  openssl
  git
  tree
  socat
  ack
  ripgrep
  elasticsearch
  glib
  gnupg
  imagemagick
  postgresql
  memcached
  sqlite
  privoxy
  fontforge
  heroku
  ncdu
  ngrep
  redis
  ffmpeg
  caskroom/cask/brew-cask
  sshuttle
)

brew install ${formulae[@]}

brew link openssl --force

# Casks
# Apps
apps=(
  ngrok
  visual-studio-code
  spectacle
  rocket
  google-chrome
  firefox
  1password
  iterm2
  slack
  insomnia
  virtualbox
  evernote
  flux
  skype
  sourcetree
  sqlitebrowser
  spotify
  karabiner-elements
  bitbar
  opera
  vagrant
  colloquy
  mamp
  cyberduck
  keka
  openoffice
  sequel-pro
  vlc
  smcfancontrol
  android-file-transfer
  wireshark
  opera-mobile-emulator
  imageoptim
  svgcleaner
  postgres
  handbrake
  android-sdk
)

echo "installing apps..."
brew cask install ${apps[@]}

# Remove outdated versions from the cellar
brew cleanup

# RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# If it runs...
nvm install 10 --default

# Nice to always have a lightweight http server around.
npm i -g http-server

# Yarn
curl -o- -L https://yarnpkg.com/install.sh | bash

# Finally, consider a nice dotfile setup from 
# https://github.com/mathiasbynens/dotfiles


