echo "cleaning up apt stuff"
apt-get autoremove -y
apt-get clean -y
apt-get autoclean -y

echo "cleaning up guest additions"
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?

echo "cleaning up dhcp leases"
rm /var/lib/dhcp/*

echo "cleaning up udev rules"
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

echo "remove APT files"
find /var/lib/apt -type f | xargs rm -f

echo "remove documentation files"
find /var/lib/doc -type f | xargs rm -f

echo "remove Virtualbox specific files"
rm -rf /usr/src/vboxguest* /usr/src/virtualbox-ose-guest*

echo "remove Linux headers"
rm -rf /usr/src/linux-headers*

echo "remove logs"
find /var/log -type f | while read f; do echo -ne '' > $f; done;

echo "remove cache"
find /var/cache -type f -exec rm -rf {} \;

echo "remove tmp content"
rm -rf /tmp/*

echo "remove build dir content"
rm -rf /opt/build

