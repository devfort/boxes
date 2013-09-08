#!/bin/bash -eux

apt-get -y autoremove
apt-get -y clean
rm -rf VBoxGuestAdditions*.iso VBoxGuestAdditions*.iso.?
rm -rf vmware-tools-linux*.iso vmware-tools-linux*.iso.?
rm -f /tmp/chef*deb
