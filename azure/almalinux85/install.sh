#!/bin/bash

sudo dnf install -y java-11-openjdk

wget -O apache-jmeter.tgz https://dlcdn.apache.org/jmeter/binaries/apache-jmeter-5.4.3.tgz
tar xvf apache-jmeter.tgz
rm apache-jmeter.tgz

chmod +x ./apache-jmeter-5.4.3/bin/jmeter-server
nohup ./apache-jmeter-5.4.3/bin/jmeter-server -Jserver.rmi.ssl.disable=true -Jserver.rmi.localport=8000 > jmeter.log &