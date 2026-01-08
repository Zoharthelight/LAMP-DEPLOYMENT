Step 1: Create an Azure Virtual Machine

Step 2: Connect to the VM
connect using ssh

ssh azureuser@publicip

Step 3: Update the VM
sudo apt update && sudo apt upgrade -y

Step 4: Install Apache
sudo apt install apache2 -y
start Apache
sudo systemctl start apache2
sudo systemctl enable apache2
Visit http://publicip in a browser to see the APACHE2 Ubuntu default page

Step 5: Install MySQL
sudo apt install mysql-server -y
secure MySQL installation
sudo mysql_secure_installation
follow prompts to set root password and security options

Step 6: Install PHP
sudo apt install php libapache2-mod-php php-mysql -y
restart Apache to load PHP:
sudo systemctl restart apache2
Test PHP:
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php
visit http://publicip/info.php in a broswer. you should see the PHP info page

Step 7: Deploy a sample Web Application
Replace the default Apache page
sudo rm /var/www/html/index.html
sudo nano /var/www/html/index.php

     Add a simple PHP page
    <?php
    echo "Hello from LAMP on Azure!";
    ?>
visit http://publicip to see your live page    

