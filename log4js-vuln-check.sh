#!/bin/bash
echo 'Installing Denpencies'
sudo apt-get update && sudo apt-get install lsof unzip locate
echo 'Updating File Index Database'
sudo updatedb
echo 'Finding Anything With Java In Name'
sudo find / -name "java"
echo 'Finding Anything With Elastics In Name'
sudo find / -name "elastics"
echo 'Server Bound Listening Port'
sudo lsof -i -P -n | grep LISTEN
echo 'Running Vulnerability Tester'
wget https://raw.githubusercontent.com/rubo77/log4j_checker_beta/main/log4j_checker_beta.sh -q -O - | sudo bash
