WORK IN PROGRESS

# About
Script was tested on/with:
* Ubuntu 14.04.5
  * kernel: 4.4.0-111-generic
* openswan 1:2.6.38-1
* openvpn 2.3.2-7ubuntu3.2
* ppp 2.4.5-5.1ubuntu2.2
* xl2tpd 1.3.6+dfsg-1

**This script overwrites configuration files. Use at your own risk!**

# Prerequisites

    apt install xl2tpd openvpn openswan ppp nmap

# How to use
* `cd /usr/local
* `git clone https://github.com/maciejkorzen/vpn-reconnector.git`
* Edit and adjust following files:
  * `*.template`
  * `common.inc.sh`
  * `options.l2tpd.client`
  * `test-if-vpn-is-working`
  * `update-adresses`
* `cp /usr/local/vpn-reconnector/options.l2tpd.client /etc/ppp/options.l2tpd.client`
* Create `/etc/openvpn/vpn-reconnector-1-pass.txt` file with following content:
```
your login
your password
```
* Create file `/usr/local/etc/vpn-reconnector-servers` with IP addresses of VPN servers. One address per line.
* Run `start-vpns` script. You may run it in `screen`, Supervisor, systemd or any other tool of choice.

# Author
Maciej Korzeń
maciek@korzen.org
