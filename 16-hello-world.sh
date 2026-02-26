#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

echo "Installing nginx..."
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing nginx...............failure"
    exit 1
else
    echo "Installing nginx...............success"
fi

echo "Installing mysql..."
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing mysql...............failure"
    exit 1
else
    echo "Installing mysql...............success"
fi

echo "Installing nodejs..."
dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing nodejs...............failure"
    exit 1
else
    echo "Installing nodejs...............success"
fi