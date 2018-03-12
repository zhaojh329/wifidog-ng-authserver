# wifidog-ng-authserver
A simple auth server for wifidog-ng to test

# Deploying the server
Install the GO language environment (if you haven't installed it)

    sudo apt-get install golang     # For Ubuntu

    sudo yum install golang         # For Centos

Set GOPATH environment variable(if you haven't set it)(since Go 1.8, default is $HOME/go)

    export GOPATH=$HOME/go

Install wifidog-ng-authserver

    go get -u github.com/zhaojh329/wifidog-ng-authserver

Run

	$GOPATH/bin/wifidog-ng-authserver
	$GOPATH/bin/wifidog-ng-authserver -wx	# For WeChat

# Configure your wifidog-ng in your router

	vi /etc/config/wifidog-ng