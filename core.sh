echo 'deb http://deb.xanmod.org releases main' |tee /etc/apt/sources.list.d/xanmod-kernel.list && wget -qO - https://dl.xanmod.org/gpg.key | apt-key add -
apt update && apt install linux-xanmod-x64v1
apt autoremove
