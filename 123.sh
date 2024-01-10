read varname
systemctl stop nginx
sudo "$HOME/.acme.sh/acme.sh" --renew -d $varname --force --ecc
systemctl start nginx
systemctl restart xray
