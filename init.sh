git config --global user.name "zmozg"
git config --global user.email "zmozg20@gmail.com"

# nginx conf
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

# gunicorn_ask
sudo ln -sf /home/box/web/etc/gunicorn_ask.conf /etc/gunicorn.d/ask
sudo /etc/init.d/gunicorn restart



