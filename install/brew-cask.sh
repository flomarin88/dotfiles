apps=(
    alfred
    bettertouchtool
    caffeine
    dash
    dashlane
    flux
    intellij-idea
    iterm2
    java
    google-chrome
    slack
    sourcetree
    spotify
    sublime-text3
    tunnelblick
    virtualbox
    vagrant
    vagrant-manager
    vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package && qlmanage -r

# rbenv install 2.2.3
# rbenv global 2.2.3
# gem install bundler
# gem install dashing