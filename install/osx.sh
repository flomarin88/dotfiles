#!/usr/bin/env bash

sudo softwareupdate -i -a
xcode-select --install
sudo xcodebuild -license

# Install Homebrew & brew-cask

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew tap homebrew/versions
brew tap caskroom/versions
