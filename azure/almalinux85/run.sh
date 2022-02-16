#!/bin/bash

nohup ./apache-jmeter-5.4.3/bin/jmeter-server -Jserver.rmi.ssl.keystore.file=rmi_keystore.jks > jmeter.log &