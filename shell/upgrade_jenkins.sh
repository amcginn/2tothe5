#!/bin/bash
# Update to the latest version of Jenkins while backing up the existing war with its version 
# cerner_2^5_2018

cd jenkins/
version=`unzip -q -c jenkins.war META-INF/MANIFEST.MF | grep Implementation-Version: | cut -d' ' -f 2 | tr -d '\n' | tr -d '\r'`
answer="jenkins-${version}.war.bak"
cp jenkins.war $answer
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war
