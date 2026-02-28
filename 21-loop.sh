#!/bin/bash/

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" 

if [ $USER_ID -ne 0 ]; then
    echo -e " $R Please run this script with root user access $N"
    exit 1
fi

validate() {
if [ $1 -ne 0 ]; then
    echo -e "$2...............$G failure"
    exit 1
else
    echo  -e "$2...............$Y success"
fi

}
for package in $@ # passing varaibles sh 19-loop.sh gninx,mysql,nodejs
do
dnf list installed $package &>>$LOGS_FILE
if [ $? -ne 0 ]; then 
echo "$package not installed, installing now"
dnf install $package -y &>>$LOGS_FILE
validate $? "$package installtion done"

else 
echo -e "$package already installed, $Y SKIPPING"

fi

done
