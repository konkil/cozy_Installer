read -r -p "Are you sure to start cozy-install script? At your own risk! [y/N] " response
response=${response,,}    # tolower
if [[ $response =~ ^(yes|y)$ ]]
then

apt-get install --yes ca-certificates apt-transport-https
cd ~
wget https://debian.cozycloud.cc/cozy.gpg.key
apt-key add cozy.gpg.key
rm cozy.gpg.key
apt-get update
apt-get install cozy

fi
