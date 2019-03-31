[![Build Status](https://travis-ci.org/asteny/prometheus-deb.svg?branch=master)](https://travis-ci.org/asteny/prometheus-deb)[![Download](https://api.bintray.com/packages/asten/prometheus/prometheus/images/download.svg)](https://bintray.com/asten/prometheus/prometheus/_latestVersion)


Prometheus deb
==========

Deb package with [Prometheus](https://prometheus.io) for Ubuntu (16.04 - 18.04)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/asten/prometheus xenial main" | tee -a /etc/apt/sources.list.d/prometheus.list
apt-get update
apt-get install prometheus -y

```

[All package versions in Bintray repo](https://bintray.com/asten/prometheus/prometheus)
-------------------------------------------------------------------------------
