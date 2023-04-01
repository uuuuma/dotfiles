#!/usr/bin/env zsh

sudo -v

# use dark mode
defaults write "Apple Global Domain" "AppleInterfaceStyle" -string "Dark"

# enable dock magnification
defaults write "com.apple.dock" "magnification" -int 1

# maximize the magnification rate of dock icons
defaults write "com.apple.dock" "largesize" -int 128

# enable dock auto-hide
defaults write "com.apple.dock" "autohide" -int 1

# do not show recently used apps in dock
defaults write "com.apple.dock" "show-recents" -int 0

# shorten "delay until repeat" to maximum
defaults write "Apple Global Domain" "InitialKeyRepeat" -int 15

# shorten "key repeat rate" to maximum
defaults write "Apple Global Domain" "KeyRepeat" -int 2

# disable auto-period when input double-space
defaults write "Apple Global Domain" "NSAutomaticPeriodSubstitutionEnabled" -int 0

# disable auto-capitalization
defaults write "Apple Global Domain" "NSAutomaticCapitalizationEnabled" -int 0

# disable live conversion in Japanese input
defaults write "com.apple.inputmethod.Kotoeri" "JIMPrefLiveConversionKey" -int 0

# input "\" when enter the Yen key in Japanese input
defaults write "com.apple.inputmethod.Kotoeri" "JIMPrefCharacterForYenKey" -int 1

# show Emoji & Symbols when enter the fn key
defaults write "com.apple.HIToolbox" "AppleFnUsageType" -int 2

# disable input-sources shortcuts (ctrl+space & ctrl+shift+space)
defaults write "com.apple.symbolichotkeys" "AppleSymbolicHotKeys" -dict-add 60 "<dict><key>enabled</key><false/></dict>"
defaults write "com.apple.symbolichotkeys" "AppleSymbolicHotKeys" -dict-add 61 "<dict><key>enabled</key><false/></dict>"

# disable spotlight keyboard shortcuts (command+space & command+shift+space)
defaults write "com.apple.symbolichotkeys" "AppleSymbolicHotKeys" -dict-add 64 "<dict><key>enabled</key><false/></dict>"
defaults write "com.apple.symbolichotkeys" "AppleSymbolicHotKeys" -dict-add 65 "<dict><key>enabled</key><false/></dict>"

# hide the spotlight icon from the menu bar
defaults delete "com.apple.Spotlight" "NSStatusItem Visible Item-0"

# mute startup sound
sudo nvram StartupMute="%01"
