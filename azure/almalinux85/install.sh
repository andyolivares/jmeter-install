#!/bin/bash

sudo dnf install -y java-11-openjdk

wget -O apache-jmeter.tgz https://dlcdn.apache.org/jmeter/binaries/apache-jmeter-5.4.3.tgz
tar xvf apache-jmeter.tgz
rm apache-jmeter.tgz

chmod +x ./apache-jmeter-5.4.3/bin/jmeter-server
cp -a ./lib/jmeter-plugins-cmn-jmeter-0.4.jar ./apache-jmeter-5.4.3/lib
cp -a ./lib/perfmon-2.2.2.jar ./apache-jmeter-5.4.3/lib
cp -a ./lib/ext/jmeter-plugins-perfmon-2.1.jar ./apache-jmeter-5.4.3/lib/ext