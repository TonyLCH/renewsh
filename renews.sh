systemctl stop nginx
asudo "$HOME/.acme.sh/acme.sh" --renew -d scvd.hkcls-network.cf --force -ecc
systemctl start nginx
