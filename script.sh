sudo apt install gufw
sudo apt install HTOP
sudo apt install ClamAV
sudo apt install RKHunter
sudo apt install CHKRootkit
sudo apt install Unhide
sudo apt install Lynis
sudo apt-get purge netcat -y -qq
sudo apt-get purge netcat-openbsd -y -qq
sudo apt-get purge ncat -y -qq
sudo apt-get purge socat -y -qq
sudo apt-get purge sock -y -qq
sudo apt-get purge socket -y -qq
sudo apt-get purge sbd -y -qq
sudo rm /usr/bin/nc

sudo apt-get purge john -y -qq
sudo apt-get purge john-data -y -qq

sudo apt-get purge hydra -y -qq
sudo apt-get purge hydra-gtk -y -qq
sudo apt-get purge aircrack-ng -y -qq
sudo apt-get purge fcrackzip -y -qq
sudo apt-get purge lcrack -y -qq
sudo apt-get purge ophcrack -y -qq
sudo apt-get purge ophcrack-cli -y -qq
sudo apt-get purge pdfcrack -y -qq
sudo apt-get purge pyrit -y -qq
sudo apt-get purge rarcrack -y -qq
sudo apt-get purge sipcrack -y -qq
sudo apt-get purge irpas -y -qq

sudo apt-get install apparmor apparmor-profiles -y -qq


sudo apt-get install iptables -y -qq
iptables -A INPUT -p all -s localhost -i eth0 -j DROP

sudo apt-get install auditd
sudo apt-get install bum
# Change perms to root
chown root:root /etc/passwd
chmod 644 /etc/passwd

chown root:shadow /etc/shadow
chmod o-rwx,g-wx /etc/shadow

chown root:root /etc/group
chmod 644 /etc/group

chown root:shadow /etc/gshadow
chmod o-rwx,g-rw /etc/gshadow

chown root:root /etc/passwd-
chmod u-x,go-wx /etc/passwd-

# Disable auto mounting
sudo systemctl disable autofs

# Disable avahi-daemon
sudo systemctl disable avahi-daemon

sudo systemctl disable cups

sudo systemctl disable isc-dhcp-server
sudo systemctl disable isc-dhcp-server6

sudo systemctl disable slapd

sudo systemctl disable nfs-server
sudo systemctl disable rpcbind

sudo systemctl disable bind9

sudo apt-get remove exim4
sudo apt-get purge exim4

sudo apt-get remove smbd

sudo systemctl disable squid

