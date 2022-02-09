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
git clone git@github.com:OpenSeaMap/seesea.git

## build

### org.osm.depth.upload

#### create package
cd /data/seesea/org.osm.depth.upload
update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
mvn package

### net.sf.seesea.aggregator

#### compile
cd /data/seesea/net.sf.seesea.aggregator
mvn clean compile

### create package
cd /data/seesea-code/net.sf.seesea.aggregator
mvn package

# useful maven options

-o offline build () 

# select java version

## openjdk 11
update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java

## openjdk 8
update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

t.b.d.
openjdk version "1.8.0_312"


# bookmarks
+ https://depth.openseamap.org/#contribute - Anleitung depth Project
+ https://www.youtube.com/watch?v=ExKq23bNABk - Apache Maven Tutorial: Einführung in Build-Prozess & Abhängigkeiten
+ https://www.youtube.com/watch?v=g_06KvJ8WJI - Building Eclipse 4 Applications with Maven Tycho
+ https://github.com/mteufel/net.teufel.e4.geo - osgi sample application
+ https://de.slideshare.net/beatstrasser - Maven Tycho für Eclipse RPC Applicationen
 