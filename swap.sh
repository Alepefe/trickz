apt update
apt install -y docker.io

fallocate -l 2G /swapfile
dd if=/dev/zero of=/swapfile bs=1024 count=2097152
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo '/swapfile          swap            swap    defaults        0 0' >> /etc/fstab
sysctl vm.swappiness=10
echo 'vm.swappiness=10' >> /etc/sysctl.conf
