# Global success
wget --user=sxl463 --password=shenliu 130.203.32.165/files/ray.jpg

# Global fail:wrong
wget --user=drzeng --password=drzeng 130.203.32.165/files/ray.jpg

# Global fail:missing = Local success
mv /usr/local/www/data/.htpasswd /usr/local/www/data/htpasswd
wget --user=drzeng --password=drzeng 130.203.32.165/files/ray.jpg

# Local fail:wrong
wget --user=drzeng --password=shenliu 130.203.32.165/files/ray.jpg

# Local fail:missing = No-auth success
mv /usr/local/www/data/files/.htpasswd /usr/local/www/data/files/htpasswd
wget --user=sxl463 --password=shenliu 130.203.32.165/files/ray.jpg

# File not found
mv /usr/local/www/data/htpasswd /usr/local/www/data/.htpasswd
mv /usr/local/www/data/files/htpasswd /usr/local/www/data/files/.htpasswd
wget --user=sxl463 --password=shenliu 130.203.32.165/files/no-such-file.txt

# Terminate server
kill -USR1 `cat /var/run/thttpd.pid`
rm ray.jpg*
