# LAMP Stack Deployment on Azure

```bash
# Connect to VM
ssh azureuser@<PUBLIC_IP>

# Update the VM
sudo apt update && sudo apt upgrade -y

# Install Apache
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

# Install MySQL
sudo apt install mysql-server -y
sudo mysql_secure_installation

# Install PHP
sudo apt install php libapache2-mod-php php-mysql -y
sudo systemctl restart apache2

# Test PHP
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php

# Deploy Sample Web App
sudo rm /var/www/html/index.html
sudo nano /var/www/html/index.php

# Paste the following in index.php:
# <?php
# echo "Hello from LAMP on Azure!";
# ?>
