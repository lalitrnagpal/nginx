
echo "Installing nginx"

sudo apt-get update && sudo apt-get upgrade

curl -O http://nginx.org/download/nginx-1.19.6.tar.gz

# wget http://nginx.org/download/nginx-1.19.6.tar.gz

tar -xvzf nginx-1.19.6.tar.gz

cd nginx-1.19.6/

sudo apt-get install build-essential

sudo apt-get install libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev

./configure --sbin-path=/usr/bin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --with-pcre --pid-path=/var/run/nginx.pid --with-http_ssl_module

make

sudo make install

ls -l /etc/nginx

nginx -V

ps aux | grep nginx

sudo nginx

ps aux | grep nginx
