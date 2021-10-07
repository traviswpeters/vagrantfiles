echo "Vagrant / Linux Setup... (`whoami`)"

touch ~/.hushlogin # surpress login banner w/ motd

ln -sf ~/projects/dotfiles/config.ssh ~/.ssh/config

# [[ -s ~/projects/dotfiles/shell-aliases ]] && . ~/projects/dotfiles/shell-aliases
# [[ -s ~/projects/dotfiles/shell-functions ]] && . ~/projects/dotfiles/shell-functions
# [[ -s ~/projects/dotfiles/shell-variables ]] && . ~/projects/dotfiles/shell-variables

### projects ###

# git clone https://github.com/wireghoul/graudit         # grep-ing in code / easy findings
# git clone https://github.com/AlDanial/cloc             # count lines of code
# git clone https://github.com/longld/peda.git           # PEDA - Python Exploit Development Assistance for GDB
# git clone https://github.com/fkie-cad/cwe_checker      # scan for CWEs in binaries
# git clone https://github.com/JusticeRage/Manalyze.git  # A static analyzer for PE executables.
# git clone https://github.com/fkie-cad/FACT_core.git    # Firmware Analysis and Comparison Tool
# git clone https://github.com/ReFirmLabs/binwalk.git    # Firmware Analysis Tool

# add hook in bashrc to update colors
if ! grep -q '.colors.rc' ~/.bashrc; then
    echo '' >> ~/.bashrc
    echo '### CUSTOM BASHRC ADDITIONS ###' >> ~/.bashrc
    echo '. .colors.rc' >> ~/.bashrc
fi

# Permanently update PATH if this system/config doesn't currently have XYZ in PATH already
[[ ":$PATH:" != *":/home/vagrant/.local/bin:"* ]] && echo export PATH="${PATH}:/home/vagrant/.local/bin" >> ~/.bashrc
