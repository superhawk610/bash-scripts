# bash-scripts
#####

Don't worry, they work in other shells too. Probably.

Most are mine, some aren't. I'll let you know when I'm borrowing.

## ip.sh
List your device's local and external IPs as exposed through `ifconfig` or `ip a`.

**Usage:**
```shell
./ip.sh
```

**Output:**
```shell
WAN IP: 123.123.123.123
LAN IP: 192.168.1.10
```

## check_git_status.sh
Check the working status of all top-level Git directories in the specified directory.

**Usage:**
```shell
./check-git-status.sh [path]
```

**Output:**
```shell
/foo/bar/repo1        [UP TO DATE]
/foo/bar/repo2        [OUT OF SYNC]
/foo/bar/not-a-repo
```

## check-port.sh
Check the status of a given port on a given host. (Requires `nmap` to be installed.)

**Usage:**
```shell
./check-port.sh [host] [port]
```

**Output:**
```shell
Starting Nmap 7.01 ( https://nmap.org ) at 2017-11-12 22:00 EST
Nmap scan report for 192.168.1.10
Host is up (0.000051s latency).
PORT   STATE SERVICE
80/tcp open  http

Nmap done: 1 IP address (1 host up) scanned in 0.03 seconds
```

## dot-clean.sh
Remove dot underscore files (`._*`) and .DS_Store files created by MacOS systems.

Reads working directory from `vars.sh` by default.

Run once to list files, run again to delete them.

Make sure to run with the following syntax so the script can access your shell instance's environment variables.

**Usage:**
```shell
. dot_clean.sh # lists files to delete
. dot_clean.sh # deletes files
```

## fix-git-permissions.sh
Fixes permissions on a given repository that cause strange errors.

**Usage:**
```shell
./fix-git-permissions.sh /path/to/repo
```

## list_usb.sh ([Source](https://unix.stackexchange.com/questions/144029/command-to-determine-ports-of-a-device-like-dev-ttyusb0))
Lists ports and their corresponding paths on a Unix system

**Usage:**
```shell
sudo ./list_usb.sh
```
