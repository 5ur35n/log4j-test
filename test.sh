#/bin/bash

#log4js-vuln-check
#This script is used to perform a fast check if your server is possibly affected by CVE-2021-44228 (the log4j vulnerability). 
#It does not give a 100% proof, that you are not vulnerable, but it gives a hint if it is possible, that you could be vulnerable.
#- Scans files for occurrences of log4j
#- Checks for packages containing log4j and Solr ElasticSearch
#- Checks if Java is installed
#- Analyzes JAR/WAR/EAR files
#- Option of checking hashes of .class files in archives
echo '################# Starting log4js-vuln-check #################'
echo '################# Installing Denpencies #################'
sudo apt-get update && sudo apt-get install lsof unzip locate

echo '#################Updating File Index Database #################'
sudo updatedb

echo '#################Finding Anything With Java In Name #################'
sudo find / -name "java"

echo '#################Finding Anything With Elastics In Name #################'
sudo find / -name "elastics"

echo '#################Finding Anything With Elastics In Name #################'
sudo find / -name "solr"

echo 'Server Bound Listening Port'
sudo lsof -i -P -n | grep LISTEN

echo 'Running Vulnerability Tester'
sudo wget https://raw.githubusercontent.com/rubo77/log4j_checker_beta/main/log4j_checker_beta.sh -q -O - |bash

echo 'Done'
