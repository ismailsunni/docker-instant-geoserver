# Ready to Use Geoserver

## Background
Sometimes I need to have quick geoserver for testing purpose but I don't want to setup a new one and prepare all the layers.

## Solution
Another project, [MapFish Print](https://github.com/mapfish/mapfish-print), has a docker compose and its data that ready to use. I merely copy the data here, and do a small modification on the Makefile and docker-compose.yaml.

## How to use
1. Run the Geoserver:
   ```
   make geoserver-up
   ```
2. Accessing the GeoServer:

   [http://localhost:8080](http://localhost:8080)
   
   You can log in by using geoserver default account and password.
   ```
   Username: admin
   Password: geoserver
   ```

3. Accessing the WMS and WFS (e.g. on QGIS):
   ```
   http://localhost:8080/wms
   http://localhost:8080/wfs
   ```

4. Stop the GeoServer:
   ```
   make geoserver-down
   ```
## License
Since I copied the data from [MapFish Print](https://github.com/mapfish/mapfish-print), the license should be the same (at least for the data)
