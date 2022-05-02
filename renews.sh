systemctl stop nginx
acme.sh --renew -d scvd.hkcls-network.cf --force -ecc
systemctl start nginx
