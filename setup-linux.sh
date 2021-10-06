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
apt install net-tools
apt install vim -y  # editor
apt install git -y  # DVCS
apt install tree -y # enhanced commandline output

