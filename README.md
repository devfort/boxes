This project builds [/dev/fort](http://devfort.com) [Vagrant](http://www.vagrantup.com/) base boxes using [Packer](http://www.packer.io/). These boxes should be used when developing on a fort, or when working on any /dev/fort projects. They’re somewhat based on [Opscode’s Bento boxes](https://github.com/opscode/bento/), with a few fort-centric tweaks (and a reduction in scope).

Current boxes
-------------

The following Vagrant baseboxes are publicly available and were built using this project. These boxes are provisionerless; Vagrant can be instructed to install Chef at runtime using the [vagrant-omnibus plugin](https://github.com/schisamo/vagrant-omnibus) (not sure how well this will work on a fort yet).

- [devfort-ubuntu-13.04](http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-virtualbox.box) and [devfort-ubuntu-13.04-120gb](http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-120gb-virtualbox.box) for VirtualBox
- [devfort-ubuntu-13.04](http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-vmware.box) and [devfort-ubuntu-13.04-120gb](http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-120gb-vmware.box) for VMWare

Getting Started
---------------

1. [Install Packer](http://www.packer.io/), [VirtualBox](https://www.virtualbox.org), and [VMWare Fusion](http://www.vmware.com/products/fusion/)
2. Run `packer build devfort-boxes.json` to build the baseboxes. This will (eventually) result in a number of `.box` files in this directory.
3. Run `bin/push_to_s3` to upload the boxes to `http://devfort.s3.amazonaws.com/`. If you want to upload them elsewhere, you’re on your own.

Using the boxes
---------------

Either manually add the boxes to your Vagrant install (`vagrant box add <name> <url>`), or specify their URL in your Vagrantfile using `config.vm.box_url`.

Todo
----

- Work out how to install Chef on a fort (in lieu of vagrant-omnibus)
- Auto-upload builds using Travis?
