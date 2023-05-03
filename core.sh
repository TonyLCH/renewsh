echo 'deb http://deb.xanmod.org releases main' |tee /etc/apt/sources.list.d/xanmod-kernel.list && wget -qO - https://dl.xanmod.org/gpg.key | apt-key add -
apt update && apt install linux-xanmod
echo 'net.core.default_qdisc = fq_codel' | tee /etc/sysctl.d/90-override.conf
echo "net.core.default_qdisc=fq_codel" | tee /etc/sysctl.d/99-sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr2" | tee /etc/sysctl.d/99-sysctl.conf
