systemctl stop nginx
sudo "$HOME/.acme.sh/acme.sh" --renew -d web-sg1.hkcls.online --force --ecc
systemctl start nginx
systemctl restart xray
