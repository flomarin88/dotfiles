apps=(
    alfred
    amphetamine
    better-touch-tool
    calibre
    clean-my-mac-3
    dash
    dashlane
    dayone
    flux
    franz
    gemini2
    intellij-idea
    istatmenus
    iterm2
    google-chrome
    slack
    snippetslabs
    sourcetree
    spotify
    sublime-text
    things
    timing
    transmit
    vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package && qlmanage -r

# rbenv install 2.2.3
# rbenv global 2.2.3
# gem install bundler
# gem install dashing

