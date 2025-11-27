#!/bin/bash

echo "Analysing log files"
echo "==================="

echo -e "\nList of log files updated in last 24 hours"
find /home/aca/learn-bash/logs -name “*.log” -mtime -1

echo -e "\nSearching ERROR logs in application.log file" 
grep "ERROR" /home/aca/learn-bash/logs/application.log

echo -e "\nNumber of ERROR logs found in application.log"
grep -c "ERROR" /home/aca/learn-bash/logs/application.log

echo -e "\nNumber of FATAL logs found in application.log" 
grep -c "FATAL" /home/aca/learn-bash/logs/application.log

echo -e "\nNumber of FATAL logs found in system.log"
grep -c "FATAL" /home/aca/learn-bash/logs/system.log

echo -e "\nNumber of CRITICAL logs found in system.log"
grep -c "CRITICAL" /home/aca/learn-bash/logs/system.log

echo -e "\nCRITICAL logs found in system.log"
grep "CRITICAL" /home/aca/learn-bash/logs/system.log