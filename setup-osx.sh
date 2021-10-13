#!/bin/bash -x
# Thanks in part to @nnja: https://github.com/nnja/new-computer

# Colorize

# Set the colours you can use
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

# Resets the style
reset=`tput sgr0`

# Color-echo. Improved. [Thanks @joaocunha]
# arg $1 = message
# arg $2 = Color
cecho() {
  echo "${2}${1}${reset}"
  return
}

#####################
### Preliminaries ###
#####################

# Install the Xcode command line tools from the command line:
xcode-select --install

######################
### HOMEBREW SETUP ###
######################

echo "Installing brew..."

if test ! $(which brew)
then
    # Install Homebrew from https://brew.sh (most likely you can just run the following command)
    # -> Don't prompt for confirmation when installing homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
fi

# Latest brew, install brew cask
brew update
brew upgrade
brew doctor
brew update

#################
### SSH SETUP ###
#################

# echo "Generating ssh keys, adding to ssh-agent..."
# # read -p 'Input email for ssh key: ' useremail
# useremail='traviswp@gmail.com'

# echo "Use default ssh file location, enter a passphrase: "
# ssh-keygen -t rsa -b 4096 -C "$useremail"  # will prompt for password
# eval "$(ssh-agent -s)"

# # Now that sshconfig is synced add key to ssh-agent and store passphrase in keychain
# ssh-add -K ~/.ssh/id_rsa

# # If you're using macOS Sierra 10.12.2 or later, you will need to modify your ~/.ssh/config file to automatically load keys into the ssh-agent and store passphrases in your keychain.
# if [ -e ~/.ssh/config ]
# then
#     echo "ssh config already exists. Skipping adding osx specific settings... "
# else
#     echo "Writing osx specific settings to ssh config... "
#     cat <<EOT >> ~/.ssh/config
#         Host *
#         AddKeysToAgent yes
#         UseKeychain yes
#         IdentityFile ~/.ssh/id_rsa
# EOT
# fi

#########################
### MacOS Environment ###
#########################

# environment settings & preferences
ln -fs ~/projects/dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
mv ~/Library/TeXShop/Macros/Macros_Latex.plist ~/Library/TeXShop/Macros/Macros_Latex_BACKUP.plist  
ln -fs ~/projects/dotfiles/Macros_Latex.plist ~/Library/TeXShop/Macros/Macros_Latex.plist 

# My scripts rely on the airport utility (OSX). Add a symlink to the system binary.
# In the event that I need a place to store local functions/variables, I create a personal file that won't be tracked by Git.
# My scripts check for the existence of this file and use it if it exists. Update the logic/naming according to your needs.
sudo ln -fs /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/sbin/airport

#########################
### HOMEBREW INSTALLS ###
#########################

### Mac App Store Installs
brew install mas 

### Run Brew Cleanup
brew cleanup
