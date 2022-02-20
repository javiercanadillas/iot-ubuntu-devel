# IoT devices development machine

I teach IoT and my students have an assorted selection of Operating Systems. So setting up a common environment they all can use makes sense.

Doing this work in a reproducible way makes even more sense. That's why this repo uses Vagrant to set up an Ubuntu Linux VirtualBox VM configured for IoT development, and shows you how to consume this environment as a Vagrant box right away from Hashicorp's Vagrant Cloud.

The VM has been build using the [Chef's Ubuntu 21.10 Bento Box](https://app.vagrantup.com/bento/boxes/ubuntu-21.10) as a stating point, and then adding an XFCE4 Graphip Environment as a basic UI as well as some other tools and convenient configurations like:

- Python 3 and Python 3 virtual environments
- Minicom with basic setup
- Thonny IDE
- Shared folder between host and guest
- Sensible display configuration options that allow for Display resolution adjustment.
- Spanish keyboard layout

## Getting the VM to work
Getting this VM up and running in your own laptop requires yo follow the next simple steps:

### 1. Get Virtualbox
Download and install [VirtualBox](https://www.virtualbox.org) for you Operating System. If you use Mac OS X as I do, and you use `brew`, installing it is as simple as doing `brew install virtualbox`. If not,
- [Download Virtualbox for your operating system](https://www.virtualbox.org/wiki/Downloads)
- Make sure you follow [your OS specific instructions](https://www.virtualbox.org/manual/ch02.html):
  - [Windows instructions](https://www.virtualbox.org/manual/ch02.html#installation_windows)

### 2. Get Vagrant
Download and install [Vagrant](https://www.vagrantup.com/) for you Operating System. If you use Mac OS X as I do, and you use `brew`, installing it is as simple as doing `brew install vagrant`. If that's not the case, then:
- [Download Vagrant for your operating system](https://www.vagrantup.com/downloads)
-  Make sure you [follow your OS specific instructions](https://www.vagrantup.com/docs/installation#installing-vagrant).

### 3. Get the Vagrant box
This repo has all the necessary artifacts to build a Virtualbox VM as described before with Vagrant.

I've done that for you already by building a [Vagrant box](https://www.vagrantup.com/docs/boxes) that I've published in [Hashicorp's Vagrant Cloud](https://www.vagrantup.com/docs/boxes) as a public image.



## Building the Vagrant image by yourself

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

![XFCE4 Desktop](./img/XFCE4_basic_screen.png)

Log in is automatic every time the machine restarts. If you log out, you can log in back into the system with the username `vagrant` and password `vagrant`.

If you wish to connect to the VM via SSH, you can also do:

```bash
vagrant ssh
```

## Building the Vagrant box

