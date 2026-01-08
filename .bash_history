sudo apt update && sudo apt upgrade -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2
sudo ss -tuln | grep :80
sudo apt install mysql-server -y
sudo mysql_secure_installation
