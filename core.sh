echo 'deb http://deb.xanmod.org releases main' |tee /etc/apt/sources.list.d/xanmod-kernel.list && wget -qO - https://dl.xanmod.org/gpg.key | apt-key add -
apt update && apt install linux-xanmod-x64v3
echo 'net.core.default_qdisc = fq' | tee /etc/sysctl.d/90-override.conf
echo "net.core.default_qdisc=fq" | tee /etc/sysctl.d/99-sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr2" | tee /etc/sysctl.d/99-sysctl.conf
echo "net.ipv4.tcp_retries2 = 8
net.ipv4.tcp_slow_start_after_idle = 0
fs.file-max = 1000000
fs.inotify.max_user_instances = 8192
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_fin_timeout = 30
net.ipv4.tcp_tw_reuse = 1
net.ipv4.ip_local_port_range = 1024 65000
net.ipv4.tcp_max_syn_backlog = 16384
net.ipv4.tcp_max_tw_buckets = 6000
net.ipv4.route.gc_timeout = 100
net.ipv4.tcp_syn_retries = 1
net.ipv4.tcp_synack_retries = 1
net.core.somaxconn = 32768
net.core.netdev_max_backlog = 32768
net.ipv4.tcp_timestamps = 0
net.ipv4.tcp_max_orphans = 32768
# forward ipv4
#net.ipv4.ip_forward = 1" | tee /etc/sysctl.conf
