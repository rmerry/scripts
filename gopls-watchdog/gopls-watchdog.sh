#!/bin/bash

while(true); do
  MEM_USAGE=$(ps --no-headers -o %mem,command ax | grep gopls | awk '{x+=$1}; END{print x}')
  if (( $(echo "$MEM_USAGE > 50" |bc -l) )); then
      echo "gopls memory usage exceeds threshold; killing..."
      pkill gopls
  fi
  sleep 5
done
