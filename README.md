Log4JS Vulnerability Scanner & Local Port Bind Scanner

This script is used to perform a fast check if your server is possibly affected by CVE-2021-44228 (the log4j vulnerability). 
It does not give a 100% proof, that you are not vulnerable, but it gives a hint if it is possible, that you could be vulnerable.
 
 - Scans files for occurrences of log4j
 - Checks for packages containing log4j and Solr ElasticSearch
 - Checks if Java is installed
 - Analyzes JAR/WAR/EAR files
 - Option of checking hashes of .class files in archives

Run: 'wget https://raw.githubusercontent.com/5ur35n/log4j-test/main/log4js-vuln-check.sh -q -O - |bash'
