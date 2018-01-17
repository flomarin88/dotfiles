apps=(
    alfred
    calibre
    cleanmymac
    dash
    dashlane
    dayone-cli
    flux
    franz
    intellij-idea
    istat-menus
    iterm2
    google-chrome
    ngrok # Aircall
    rubymine
    slack
    sourcetree
    spotify
    sublime-text
    timing
    transmit
    vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package && qlmanage -r

