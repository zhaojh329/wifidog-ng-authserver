#!/bin/sh

export GOARCH="amd64"
go build
tar zcvf wifidog-ng-authserver-x64.tar.gz wifidog-ng-authserver


export GOARCH="386"
go build
tar zcvf wifidog-ng-authserver.tar.gz wifidog-ng-authserver

rm wifidog-ng-authserver 
