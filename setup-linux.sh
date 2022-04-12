#
# Thanks in part to @nnja: https://github.com/nnja/new-computer
#

echo "Linux Setup... (`whoami`)"

export DEBIAN_FRONTEND=noninteractive

### APT INSTALLS
apt update
apt upgrade -y
apt install man -y
apt install manpages-dev -y
apt install manpages-posix -y
apt install manpages-posix-dev -y
apt install python3 -y
apt install python3-pip -y
apt install golang-go
apt install net-tools -y
apt install vim -y
apt install git -y
apt install tree -y         # enhanced commandline output
apt install cloc -y         # assessments / source code summary
apt install dos2unix -y
apt install bat -y          # a (better) cat clone
apt install nmap -y         # network scanning tool
apt install wireless-tools
apt install npm -y
apt install openjdk-8-jre-headless -y
apt install maven -y
apt install jq              # amazing CLI processor; primarily for JSON, but can be used for some other formats too
apt install php
apt install ruby

### SNAPS
snap install docker
snap install kubectl --classic

### PYTHON PACKAGES
pip3 install semgrep        # For Ubuntu / Windows via WSL / Linux / macOS -> may need to disable Windows/WSL firewall?!?!? :-(
pip3 install scoutsuite     # https://github.com/nccgroup/ScoutSuite/wiki/Setup
pip3 install kube-hunter    # https://github.com/aquasecurity/kube-hunter#prerequisites

### MANUAL INSTALL

# Install AWS CLI --- apt install awscli doesn't work correctly on Linux...
# https://www.fosstechnix.com/how-to-install-aws-cli-on-linux/
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

### ALIASES
ln -fs /usr/bin/python3 /usr/bin/python 2> /dev/null
ln -fs /usr/bin/batcat /usr/bin/bat 2> /dev/null
