# !/bin/bash

ALP_VERSION=v1.0.21

sudo apt update
sudo apt upgrade
sudo apt install -y git unzip graphviz tree wget

echo "Install Taskfile"
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d

echo "Install Alp"
wget https://github.com/tkuchiki/alp/releases/download/${ALP_VERSION}/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo install alp $HOME/bin/alp
rm -rf alp_linux_amd64.zip alp

echo "Install percona-toolkit"
sudo apt-get install -y percona-toolkit