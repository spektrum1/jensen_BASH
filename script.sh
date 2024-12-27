#!/bin/bash

if [ -z "$RUN_NUMBER" ]; then
  export RUN_NUMBER=1
else
  export RUN_NUMBER=$((RUN_NUMBER + 1))
fi

DATE=$(date)
echo run number: $RUN_NUMBER : $DATE > output.txt
