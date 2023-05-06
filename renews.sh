systemctl stop nginx
sudo "$HOME/.acme.sh/acme.sh" --renew -d view.hkcls-network.cf --force --ecc
systemctl start nginx
systemctl restart xray
test