cp /etc/apt/sources.list{,-bak}
cat > /etc/apt/sources.list <<EOF
deb http://mirrors.aliyun.com/debian/ stretch main
deb-src http://mirrors.aliyun.com/debian/ stretch main
deb http://mirrors.aliyun.com/debian/ stretch-updates main
deb-src http://mirrors.aliyun.com/debian/ stretch-updates main
deb http://mirrors.aliyun.com/debian-security stretch/updates main
deb-src http://mirrors.aliyun.com/debian-security stretch/updates main
EOF
apt-get update
