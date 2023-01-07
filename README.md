# ubuntu-in-termux

![Neofetch](https://github.com/MrPurple666/ubuntu-termux/blob/master/images/21.10.png)

## What's This?

This is a script that allows you to install Ubuntu in your termux application without a rooted device

## Updates

**• Updated to ubuntu 18.04.6**

**• Just an old LTS but the most compatible with pretty much everything to see the latest version of lts look at the `LTS` branch**

**• If you are looking for development versions see `developement` branch**

### Installation steps

1. Update termux: `apt-get update && apt-get upgrade -y`
2. Install wget: `apt-get install wget -y`
3. Install proot: `apt-get install proot -y`
4. Install git: `apt-get install git -y`
5. Go to HOME folder: `cd ~`
6. Download script: `git clone https://github.com/MrPurple666/ubuntu-termux.git`
7. Go to script folder: `cd ubuntu-termux`
8. Give execution permission: `chmod +x ubuntu.sh`
9. Run the script: `./ubuntu.sh -y`
10. Now just start ubuntu: `./startubuntu.sh`

## Fix DPKG error **Sub-process /usr/bin/dpkg returned an error code (1)**

1. Write on Ubuntu terminal `rm -rf /var/lib/dpkg/info/*.*`
2. after `apt-get clean`
3. and `apt-get install -f`
4. Now just give a `apt-get update` and done error is fixed

## Tips
1. Make an automation via .bashrc to Fix DPKG error
