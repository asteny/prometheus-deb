VERSION = 2.20.1
ITERATION = 0
UID ?= 0

all: build

build: download
	chmod -Rv 644 build/contrib/
	fpm -s dir -f -t deb \
		-n prometheus \
		-v $(VERSION) \
		--iteration $(ITERATION) \
		--after-install build/contrib/prometheus.postinstall \
		--after-remove build/contrib/prometheus.postrm \
		-p build/packages \
		build/contrib/prometheus.service=/lib/systemd/system/prometheus.service \
		build/contrib/prometheus.defaults=/etc/default/prometheus \
		build/contrib/prometheus.preset=/usr/lib/systemd/system-preset/prometheus.preset \
		/tmp/prometheus/promtool=/usr/bin/promtool \
        /tmp/prometheus/prometheus=/usr/bin/prometheus \
		/tmp/prometheus/prometheus.yml=/etc/prometheus/prometheus.yml \
		/tmp/prometheus/consoles=/etc/prometheus/consoles \
		/tmp/prometheus/console_libraries=/etc/prometheus/console_libraries


download:
	cd /tmp && curl -Lo prometheus.tar.gz https://github.com/prometheus/prometheus/releases/download/v$(VERSION)/prometheus-$(VERSION).linux-amd64.tar.gz
	cd /tmp && tar -xvzf /tmp/prometheus.tar.gz && mv prometheus-$(VERSION).linux-amd64 prometheus
