#
# Thanks in part to @nnja: https://github.com/nnja/new-computer
#

echo "Linux Setup... (`whoami`)"

touch ~/.hushlogin # no login banner w/ motd

##############################
###        Projects        ###
##############################

# mkdir -p ~/projects && cd ~/projects

[[ -s ~/projects/dotfiles/shell-aliases ]] && . ~/projects/dotfiles/shell-aliases
[[ -s ~/projects/dotfiles/shell-functions ]] && . ~/projects/dotfiles/shell-functions
[[ -s ~/projects/dotfiles/shell-variables ]] && . ~/projects/dotfiles/shell-variables

### PERSONAL/PROJECT/ENVIRONMENT REPOS
# git clone git@github.com:traviswpeters/security.git
# git clone git@github.com:traviswpeters/dotfiles.git
# git clone git@github.com:traviswpeters/scripts.git
# git clone git@github.com:traviswpeters/dockerfiles.git
# git clone git@github.com:traviswpeters/vagrantfiles.git
# git clone git@github.com:traviswpeters/traviswpeters.github.io.git
# git clone git@github.com:traviswpeters/resume.git vita

### OTHER PROJECTS
# git clone https://github.com/wireghoul/graudit         # grep-ing in code / easy findings
# git clone https://github.com/AlDanial/cloc             # count lines of code
# git clone https://github.com/longld/peda.git           # PEDA - Python Exploit Development Assistance for GDB
# git clone https://github.com/fkie-cad/cwe_checker      # scan for CWEs in binaries
# git clone https://github.com/JusticeRage/Manalyze.git  # A static analyzer for PE executables.
# git clone https://github.com/fkie-cad/FACT_core.git    # Firmware Analysis and Comparison Tool
# git clone https://github.com/ReFirmLabs/binwalk.git    # Firmware Analysis Tool

### SETTINGS

# ssh configuration
mkdir -p ~/.ssh && chmod 0700 ~/.ssh
ln -fs ~/projects/dotfiles/config.ssh ~/.ssh/config

# environment settings & preferences
# ln -fs ~/projects/dotfiles/.zshrc ~/.zshrc
# ln -fs ~/projects/dotfiles/.bash_profile ~/.bash_profile
# ln -fs ~/projects/dotfiles/.bashrc ~/.bashrc
# ln -fs ~/projects/dotfiles/.profile ~/.profile
# ln -fs ~/projects/dotfiles/.gitconfig ~/.gitconfig
# ln -fs ~/projects/dotfiles/.gitignore_global ~/.gitignore_global
# ln -sf ~/projects/dotfiles/.vimrc ~/.vimrc
# ln -fs ~/projects/dotfiles/tmux.conf ~/.tmux.conf
# ln -fs ~/projects/vagrantfiles/Vagrantfile ~/Vagrantfile

### python
# ln -fs ~/projects/dotfiles/direnvrc ~/.config/direnv/direnvrc # Setup direnvrc & python virtual environment config

### ruby
# ln -fs ~/projects/dotfiles/gemrc ~/.gemrc
# gem install bundler
# gem install jekyll jekyll-paginate jekyll-sitemap jekyll-feed # dependencies for traviswpeters.github.io / https://jekyllrb.com/docs/quickstart/

#############################
### MY CUSTOM SHELL STUFF ###
#############################

# add hook in exxisting bashrc to update colors
if ! grep -q '.colors.rc' ~/.bashrc; then
    echo '' >> ~/.bashrc
    echo '### CUSTOM BASHRC ADDITIONS ###' >> ~/.bashrc
    echo '. .colors.rc' >> ~/.bashrc
fi

# customtagBEGIN="### [BEGIN] MY BASHRC CUSTOMIZATION ###"
# customtagEND="### [-END-] MY BASHRC CUSTOMIZATION ###"
# if grep -Fxq "$customtagBEGIN" ~/.bashrc
# then
#     echo 'customizations found - do not overwrite'
# else
#     # add code if not found
#     echo "" >> ~/.bashrc
#     echo "$customtagBEGIN" >> ~/.bashrc
#     echo ""
#     echo "target=$target" >> ~/.bashrc
#     echo "source $target/dotfiles/linux-bashrc-extensions.sh" >> ~/.bashrc
#     echo "$customtagEND" >> ~/.bashrc
#     echo ""
# fi

# Permanently update PATH if this system/config doesn't currently have XYZ in PATH already
[[ ":$PATH:" != *":/home/vagrant/.local/bin:"* ]] && echo export PATH="${PATH}:/home/vagrant/.local/bin" >> ~/.bashrc
