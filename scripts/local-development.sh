# PHP & Apache PPA
sudo add-apt-repository -y ppa:ondrej/apache2
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update

# Apache
sudo apt-get -y install apache2

# PHP
sudo apt-get -y install php7.4 libapache2-mod-php7.4
sudo apt-get -y install curl zip unzip php7.4-mysql php7.4-curl php7.4-ctype php7.4-uuid php7.4-iconv php7.4-json php7.4-mbstring php7.4-gd php7.4-intl php7.4-xml php7.4-zip php7.4-gettext php7.4-pgsql php7.4-bcmath php7.4-redis php-memcached
sudo phpenmod curl

# PEAR
sudo pear channel-update PEAR
sudo pear upgrade PEAR

# Phing
sudo pear channel-discover pear.phing.info
sudo pear install phing/phing

# Enable apache modules
sudo a2enmod rewrite
sudo a2enmod ssl
sudo a2enmod headers
sudo apt-get install libapache2-mod-php7.4

sudo service apache2 restart

# Install Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --force --filename=composer
mkdir -p ~/.composer
sudo chown -R $USER $HOME/.composer

# MySQL
sudo apt-get install mysql-server
sudo apt-get install php7.4-mysql

# gmagick
sudo apt-get install graphicsmagick libgraphicsmagick1-dev
sudo pecl install gmagick-beta
# Create file /etc/php5/conf.d/gmagick.ini and add a line:
#   extension=gmagick.so

# Git
apt install git
git config --global user.name "Tom Wilford"
git config --global user.email "hello@jollyblueman.com"

# nodejs
sudo apt-get install python-software-properties
sudo apt-add-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

#grunt
sudo npm install -g grunt-cli

#bower
sudo npm install -g bower

# Configure PHP (/etc/php7.4/cli/php.ini || /etc/php7.4/apache2/php.ini)
#   memory_limit = 512m
#   display_errors = On
#   html_errors = On
#   post_max_size = 32m
#   upload_max_filesize = 32m
#   default_charset = utf8

# Cleanup
sudo apt-get clean

# Check stuff
php -v
apachectl -v
composer --version
node -v