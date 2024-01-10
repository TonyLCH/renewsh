echo Domain:
read domain
systemctl stop nginx
sudo "$HOME/.acme.sh/acme.sh" --renew -d $domain --force --ecc
systemctl start nginx
systemctl restart xray
