curl -sSL https://packages.microsoft.com/config/ubuntu/18.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft-prod.list

curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

sudo apt-get update

sudo apt install libk4a1.4
sudo apt install libk4a1.4-dev 
sudo apt install k4a-tools

sudo cp ../rules/99-k4a.rules /etc/udev/rules.d/

sudo service udev reload
sudo service udev restart
sudo udevadm trigger