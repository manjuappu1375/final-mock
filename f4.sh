#!/bin/bash
threshold=2
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4')
cpu_usage_int=$(echo "$cpu_usage" | awk '{print int($1)}' )
echo "cpu Usage: $cpu_usage_int%"
if [ "$cpu_usage_int" -gt "$threshold" ]; then
        echo "High CPU usage detected: $cpu_usage_int%"
else
        echo "$cpu_usage_int% is below the threshold ($threshold%)"
fi
