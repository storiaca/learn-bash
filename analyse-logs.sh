#!/bin/bash

LOG_DIR="/home/aca/learn-bash/logs"

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "Analysing log files"
echo "==================="

echo -e "\nList of log files updated in last 24 hours"
LOG_FILES=$(find "$LOG_DIR" -name "*.log" -mtime -1)
echo "$LOG_FILES"

for LOG_FILE in $LOG_FILES; do

  for PATTERN in "${ERROR_PATTERNS[@]}"; do
  
    echo -e "\n==================================================="
    echo "============ $LOG_FILE ============"
    echo "==================================================="

    echo -e "\nSearching $PATTERN logs in $LOG_FILE file" 
    grep "$PATTERN" "$LOG_FILE"

    echo -e "\nNumber of $PATTERN logs found in $LOG_FILE"
    grep -c "$PATTERN" "$LOG_FILE"

  done
done
