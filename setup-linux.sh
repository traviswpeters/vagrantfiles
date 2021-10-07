echo "Vagrant / Linux Setup... (`whoami`)"

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
pip3 install semgrep -y   # For Ubuntu / Windows via WSL / Linux / macOS -> may need to disable Windows/WSL firewall?!?!? :-(

# binary aliases
ln -s /usr/bin/python3 /usr/bin/python
ln -s /usr/bin/batcat /usr/bin/bat

