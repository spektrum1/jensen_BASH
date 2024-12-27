#!/bin/bash

COUNTER_PATH="${HOME}/var/log/run_counter/run_number.log"
OUTPUT_PATH="${HOME}/var/log/run_counter/output.log"

if [ ! -f $COUNTER_PATH ];
then
    echo 0 > $COUNTER_PATH
fi

RUN_NUMBER=$(cat $COUNTER_PATH)

RUN_NUMBER=$((RUN_NUMBER + 1))

echo $RUN_NUMBER > $COUNTER_PATH

DATE=$(date)

echo run number: $RUN_NUMBER : $DATE >> $OUTPUT_PATH
echo run number: $RUN_NUMBER : $DATE
