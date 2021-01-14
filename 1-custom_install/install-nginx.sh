echo "Installing nginx"

sudo apt-get update && sudo apt-get upgrade -y

curl -O http://nginx.org/download/nginx-1.19.6.tar.gz

# wget http://nginx.org/download/nginx-1.19.6.tar.gz

tar -xvzf nginx-1.19.6.tar.gz

cd nginx-1.19.6/

sudo apt-get install build-essential -y

sudo apt-get install libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev -y

./configure --sbin-path=/usr/bin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --with-pcre --pid-path=/var/run/nginx.pid --with-http_ssl_module

sudo make

sudo make install

ls -l /etc/nginx

nginx -V

cd

git clone https://github.com/lalitnagpal/nginx.git

sudo mv nginx/2-custom-conf-home-page/sites /

sudo mv nginx/1-custom_install/nginx.service /lib/systemd/system

sudo systemctl enable nginx

sudo systemctl stop nginx

sudo systemctl start nginx

ps aux | grep nginx

sudo apt-get install libgd-dev -y

sudo apt-get install apache2-utils

sudo apt-get install nghttp2-client

sudo apt-get install seige






