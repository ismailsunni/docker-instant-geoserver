.PHONY: geoserver-up
geoserver-up:
	docker-compose down --remove-orphan

	mkdir /tmp/geoserver-data || true
	docker run --rm --volume=/tmp/geoserver-data:/mnt/geoserver_datadir camptocamp/geoserver \
		bash -c 'rm -rf /mnt/geoserver_datadir/*'
	mkdir /tmp/geoserver-data/www
	cp -r ./geoserver-data/* /tmp/geoserver-data/
	cp -r ./map-data/* /tmp/geoserver-data/www/

	docker-compose up -d

.PHONY: geoserver-down
geoserver-down:
	docker-compose down || true
	docker run --rm --volume=/tmp/geoserver-data:/mnt/geoserver_datadir camptocamp/geoserver \
		bash -c 'rm -rf /mnt/geoserver_datadir/*'
	rmdir /tmp/geoserver-data
