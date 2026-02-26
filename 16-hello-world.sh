#!/bin/bash/
USER_ID =$(id -u)
if [ $USER_ID -ne 0 ]; then 
echo "please run this script with root user access"
exit 1
fi
echo "Installing nginx"
dnf install nginx -y
if [ $? -ne 0 ]; then
echo "installing mysql...............failure"
exit 1
else
echo "installing mysql...............success"
fi
dnf install mysql -y

if [ $? -ne 0 ]; then 
echo "installing nodejs..............failure"
exit 1
else
echo "installing nodejs..............success"
fi
dnf install nodejs -y