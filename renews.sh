systemctl stop nginx
sudo "$HOME/.acme.sh/acme.sh" --renew -d music.hkcls-network.cf --force --ecc
systemctl start nginx
systemctl restart xray
