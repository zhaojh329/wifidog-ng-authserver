#!/bin/sh

ARCH=$(uname -m)
filename=wifidog-ng-authserver.tar.gz

[ "$ARCH" = "x86_64" ] && filename=wifidog-ng-authserver-x64.tar.gz

echo $filename

URL=https://raw.githubusercontent.com/zhaojh329/wifidog-ng-authserver/master/$filename

curl -o wifidog-ng-authserver.tar.gz -L -f $URL

if [ $? -eq 0 ]
then 
    # unpack:
    tar -zxvf wifidog-ng-authserver.tar.gz
    if [ $? -eq 0 ]
    then
        rm wifidog-ng-authserver.tar.gz
        exit 0
    fi
else
    echo "Failed to determine your platform.\nTry compile yourself"
fi

exit 1

