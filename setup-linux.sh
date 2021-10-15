#
# Thanks in part to @nnja: https://github.com/nnja/new-computer
#

echo "Linux Setup... (`whoami`)"

export DEBIAN_FRONTEND=noninteractive

apt update
apt upgrade -y

# make sure we have our manuals...
apt install man -y
apt install manpages-dev -y
apt install manpages-posix -y
apt install manpages-posix-dev -y

# some useful installs
apt install python3 -y
apt install python3-pip -y
apt install net-tools -y
apt install vim -y
apt install git -y
apt install tree -y       # enhanced commandline output
apt install tree -y
apt install cloc -y       # assessments / source code summary
apt install dos2unix -y
apt install bat -y        # a (better) cat clone
apt install nmap -y       # network scanning tool
apt install wireless-tools

pip3 install semgrep      # For Ubuntu / Windows via WSL / Linux / macOS -> may need to disable Windows/WSL firewall?!?!? :-(

# binary aliases
ln -fs /usr/bin/python3 /usr/bin/python 2> /dev/null
ln -fs /usr/bin/batcat /usr/bin/bat 2> /dev/null
