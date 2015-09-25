# Install SCL repo
sudo yum install -y centos-release-SCL
# Install PHP 5.4 and corresponding modules
sudo yum install -y php54 php54-php php54-php-gd php54-php-mbstring
# Install the updated database module which installs the new PHP 5.4 module for MySQL/MariaDB
sudo yum install -y php54-php-mysqlnd
# Disable loading the old PHP 5.3 Apache module
#mv /etc/httpd/conf.d/php.conf /etc/httpd/conf.d/php.conf/old
# Finally, restart Apache
sudo service httpd restart

# Create a php54 auto activator file
sudo touch /etc/profile.d/enablephp54.sh
echo 'source /opt/rh/php54/enable' | sudo tee --append /etc/profile.d/enablephp54.sh

# Activate the new PHP version permanently
source /opt/rh/php54/enable

# Extract ownCloud tar
#tar xvf owncloud-8.1.3.tar.bz2

sudo cp -R /vagrant/index.php /var/www/html

# Move ownCloud folder
sudo cp -R /vagrant/owncloud /var/www/html

sudo chmod -R 777 /var/www/html/owncloud