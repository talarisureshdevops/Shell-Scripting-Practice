#!/bin/bash/
start_date=$(date +%s)
echo "script execution at :$start_date"
sleep 10
end_date=$(date +%s)
total_time= $(($end_date-$start_date))
echo "the script total runtime::$total_time"


