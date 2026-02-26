#!/bin/bash/

echo "all variables passed to the script:$@"
echo "number of variables passed to script:$#"
echo "script name :$0"
echo "present which directory you are in : $(pwd)"
echo "who is running the script :$USER"
echo "home of the directory the:$HOME"
echo "pid of the script:$$"
sleep 100 &
echo "background process id:$!"
echo "all args passed to script:$*."