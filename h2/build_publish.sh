#!/bin/bash -x
./build.sh jar
mvn deploy:deploy-file -DgroupId=org.h2 \
    -DartifactId=h2 \
    -Dversion=1.4.195 \
    -Dpackaging=jar \
    -Dfile=bin/h2-1.4.195.jar \
    -DgeneratePom=true \
    -DrepositoryId=nexus \
    -Durl=http://zsibio.ii.pw.edu.pl/nexus/repository/maven-releases/
