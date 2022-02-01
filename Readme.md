# overview
this docker container was create for evaluation purposes of the seesea project

# manual

## build docker image
docker-compose build

## start container
docker-compose up -d

## stop container
docker-compose down

## connect to docker console
docker-compose exec seesea /bin/bash

## checkout seesea sourcecode from docker
cd data
svn checkout https://svn.code.sf.net/p/seesea/code/trunk seesea-code

## build

### org.osm.depth.upload

#### create package
cd /data/seesea-code/org.osm.depth.upload
mvn package

### net.sf.seesea.aggregator

#### compile
cd /data/seesea-code/net.sf.seesea.aggregator
mvn clean compile

### create package
cd /data/seesea-code/net.sf.seesea.aggregator
mvn package

# bookmarks
+ https://depth.openseamap.org/#contribute
+ https://www.youtube.com/watch?v=ExKq23bNABk
+ https://www.youtube.com/watch?v=g_06KvJ8WJI - Building Eclipse 4 Applications with Maven Tycho
+ https://github.com/mteufel/net.teufel.e4.geo - osgi sample application
+ https://de.slideshare.net/beatstrasser - 
