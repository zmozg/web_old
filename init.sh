git config --global user.name "zmozg"
git config --global user.email "zmozg20@gmail.com"


sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
source web/myvenv/bin/activate
gunicorn -b 0.0.0.0:8080 --pythonpath /home/box/web hello:Wsgi_application &
gunicorn -b 0.0.0.0:8000 --pythonpath /home/box/web/ask ask.wsgi.application &

