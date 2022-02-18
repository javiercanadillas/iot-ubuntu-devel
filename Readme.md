# IoT devices development machine

This repo uses Vagrant to set up an Ubuntu Linux VirtualBox VM configured for IoT development. 

I teach IoT and my students have an assorted selection of Operating Systems. So setting up a common environment they can all use makes sense.

The VM has xfce4 installed with a basic UI and the following tools:

- Python 3 and Python 3 virtual environments
- Minicom
- Thonny IDE

## Setting it up

Download and install [VirtualBox](https://www.virtualbox.org/manual/ch02.html) for you Operating System. If you use Mac OS X as I do, and you use `brew`, installing it is as simple as doing `brew install virtualbox`. If not, follow the previous linked instructions for your OS.

Download and install [Vagrant](https://www.vagrantup.com/docs/installation) for you Operating System. If you use Mac OS X as I do, and you use `brew`, installing it is as simple as doing `brew install vagrant`. If not, follow the previous linked instructions for your OS.

Now, clone this repo:

```bash
git clone https://gitlab.com/sw4iot/ubuntu-iot-devel
```

Change to the `ubuntu-iot-devel` directory and launch Vagrant:
```bash
vagrant up
```

Automatic installation should start. Vagrant will download the Ubuntu installation ISO and perform plenty of actions in the VM operating system, so grab a coffee and a cookie while it works.

Once installed, you should see the following screen:


If you wish to connect to the VM via SSH, you can also do:

```bash
vagrant ssh
```

### Post VM launch setup

