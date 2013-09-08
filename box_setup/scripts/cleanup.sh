#!/bin/bash -eux

apt-get -y autoremove
apt-get -y clean
rm -rf VBoxGuestAdditions*.iso VBoxGuestAdditions*.iso.?
rm -f /tmp/chef*deb
