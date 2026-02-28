#!/bin/bash/

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USER_ID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

validate() {
if [ $1 -ne 0 ]; then
    echo "$2...............failure"
    exit 1
else
    echo "$2...............success"
fi

}
for package in $@ # passing varaibles sh 19-loop.sh gninx,mysql,nodejs
do
dnf install $package -y
validate $? "$package installtion done"
done

