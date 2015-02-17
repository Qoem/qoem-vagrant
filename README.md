# OpenCache Development Environment #

[Vagrant](https://www.vagrantup.com)-based development environment for Qoem.

Based on [Debian](https://debian.org) 7.0. Has the following tools installed:

* [Mininet](https://github.com/mininet/mininet) (installed using `-a`)
* [Floodlight](https://github.com/floodlight/floodlight)
* [Flowvisor](https://github.com/OPENNETWORKINGLAB/flowvisor)
* [OpenCache](https://github.com/broadbent/opencache)
* [Scootplayer](https://github.com/broadbent/scootplayer)
* [Qoem](https://github.com/qoem/qoem)

Also includes a number of development and build tools (such as `ant`, `openjdk-6-jdk`, `pip`, etc.)


## Installation ##

To use the Qoem Vagrant build, pull the latest version of this repository with `git pull`.

Then, simply use `vagrant up`. This will download the VM and start it. 

## Usage ##

Log in to the Vagrant box with `vagrant ssh`.

This will login with the `vagrant` user and password `vagrant`.

The root password is also set to `vagrant`, although `sudo` is installed and configured for the `vagrant` user.

To start a simple tree topology with four nodes, run the `simple.py` example:

```
sudo /vagrant/examples/simple/simple.py
```

Ensure a node is running on the host machine. Use another terminal and run `vagrant ssh` again. Start `floodlight` with:

```
cd floodlight && java -jar target/floodlight.jar
```

`h1` acts as the Qoem controller:

```
cd ~/qoem
export PYTHONPATH=`pwd`
python controller/qoemcontroller.py --config=controller.conf
```

`h2` acts as an qoem node:

```
cd ~/qoem
export PYTHONPATH=`pwd`
python node/node.py --config=node.conf
```

## Update ##

To update the the development environment, simply use: 

```
git pull && vagrant box update
```

## License ##

This sofware is licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).
