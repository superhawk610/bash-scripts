#!/bin/bash
# please make sure to run this script with sudo
# comment out the first line if you already have ntpdate installed
apt update && apt install ntpdate
nptdate ntp.ubuntu.com

dpkg-reconfigure tzdata
