LIST=""
LIST+= "git "
LIST+= "python3 "
LIST+= "pipenv "
brew install $LIST


CASK=""
CASK+="linearmouse "
CASK+="google-chrome "
CASK+="iterm2 "
CASK+="visual-studio-code "
CASK+="obsidian "
CASK+="veracrypt "
CASK+="discord "
CASK+="authy "
CASK+="reaper "
CASK+="spotify "
CASK+="rectangle "
brew install --cask $CASK

FONT= ""
FONT+= "font-d2coding "
FONT+= "font-jetbrains-mono "
brew tap homebrew/cask-fonts
brew install $FONT