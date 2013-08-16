This project builds [/dev/fort](http://devfort.com) [Vagrant](http://www.vagrantup.com/) base boxes using [Packer](http://www.packer.io/). These boxes should be used when developing on a fort, or when working on any /dev/fort projects. They’re somewhat based on [Opscode’s Bento boxes](https://github.com/opscode/bento/), with a few fort-centric tweaks (and a reduction in scope).

Current boxes
-------------

The following Vagrant baseboxes are publicly available and were built using this project. These boxes are provisionerless; Vagrant can be instructed to install Chef at runtime using the [vagrant-omnibus plugin](https://github.com/schisamo/vagrant-omnibus) (not sure how well this will work on a fort yet).

- [devfort-ubuntu-13.04](http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-virtualbox.box) and [devfort-ubuntu-13.04-120gb](http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-120gb-virtualbox.box) for VirtualBox

Todo
----

- Work out how to install Chef on a fort (in lieu of vagrant-omnibus)
- Auto-upload builds using Travis? (See https://gist.github.com/mheffner/3828710)