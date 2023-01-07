LIST=""
CASK=""
FONT= ""

# Programming
CASK+="iterm2 "
CASK+="visual-studio-code "
LIST+= "git "
LIST+= "python "
LIST+= "pipenv "
LIST+= "node "
LIST+= "yarn "

FONT+= "font-d2coding "
FONT+= "font-jetbrains-mono "
FONT+= "font-sarasa-gothic "



CASK+="google-chrome "
CASK+="obsidian "
CASK+="veracrypt "
CASK+="discord "
CASK+="authy "

CASK+="telegram "


brew install $LIST
brew install --cask $CASK
brew tap homebrew/cask-fonts
brew install --cask $FONT
