# Setup server

- Get ubuntu from website
- flash ubuntu to a hard drive

Enable ssh

```shell
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install openssh-server
sudo service ssh status
sudo service ssh start
```

settings when lid is closed according to a [website](https://itsfoss.com/laptop-lid-suspend-ubuntu/)

```shell
sudo vim /etc/systemd/logind.conf
```

and then change following rows to this setting

```shell
HandleLidSwitch=ignore
HandleLidSwitchExternalPower=ignore
HandleLidSwitchDocked=ignore
```

before, it was
```shell
#HandleLidSwitch=suspend
#HandleLidSwitchExternalPower=suspend
#HandleLidSwitchDocked=ignore
```

and restart the service

```shell
sudo systemctl restart systemd-logind.service
```
Thinghs to download

```shell
sudo apt-get install git
sudo apt-get install openssh-server
sudo apt-get install vim
```

Install packages from the internet

```shell
sudo dpkg -i packagefilename.deb
```

## Install docker to the linux machine

[Docker installation ubuntu](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
