#!/usr/bin/env zsh

sudo -v

###########
# General #
###########

# defaults delete "Apple Global Domain" "AppleInterfaceStyle"
defaults write "Apple Global Domain" "AppleInterfaceStyle" -string "Dark"

########
# Dock #
########

# defaults delete "com.apple.dock" "largesize"
defaults write "com.apple.dock" "largesize" -int 128

# defaults write "com.apple.dock" "magnification" -int 0
defaults write "com.apple.dock" "magnification" -int 1

# defaults write "com.apple.dock" "autohide" -int 0
defaults write "com.apple.dock" "autohide" -int 1

# defaults write "com.apple.dock" "show-recents" -int 1
defaults write "com.apple.dock" "show-recents" -int 0

############
# Keyboard #
############

# defaults delete "Apple Global Domain" "InitialKeyRepeat"
defaults write "Apple Global Domain" "InitialKeyRepeat" -int 15

# defaults delete "Apple Global Domain" "KeyRepeat"
defaults write "Apple Global Domain" "KeyRepeat" -int 2

# defaults write "com.apple.inputmethod.Kotoeri" "JIMPrefLiveConversionKey" -int 1
defaults write "com.apple.inputmethod.Kotoeri" "JIMPrefLiveConversionKey" -int 0

# defaults write "com.apple.inputmethod.Kotoeri" "JIMPrefCharacterForYenKey" -int 0
defaults write "com.apple.inputmethod.Kotoeri" "JIMPrefCharacterForYenKey" -int 1

# defaults write com.apple.HIToolbox AppleFnUsageType -int 1
defaults write "com.apple.HIToolbox" "AppleFnUsageType" -int 2

#########
# Sound #
#########

# sudo nvram StartupMute="%00"
sudo nvram StartupMute="%01"
