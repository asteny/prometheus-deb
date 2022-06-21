![build](https://github.com/asteny/prometheus-deb/actions/workflows/build.yml/badge.svg)

Prometheus deb
==========

Deb package with [Prometheus](https://prometheus.io) for Ubuntu (xenial, bionic, focal, jammy)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EA8AECDE414187DB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys A57ED69D49D1012A
printf "deb https://packagecloud.io/the_asten/prometheus/ubuntu/ jammy main \ndeb-src https://packagecloud.io/the_asten/prometheus/ubuntu/ jammy main" | tee -a /etc/apt/sources.list.d/prometheus.list
apt-get update
apt-get install prometheus -y
```

Special thanks for the ability to use the package repository for open source projects - :rocket: https://packagecloud.io :rocket:

[All package versions in packagecloud.io repo](https://packagecloud.io/the_asten/prometheus)
-------------------------------------------------------------------------------
