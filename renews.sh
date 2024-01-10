systemctl stop nginx
sudo "$HOME/.acme.sh/acme.sh" --renew -d streaming-us-04.hkcls-network.cf --force --ecc
systemctl start nginx
systemctl restart xray
