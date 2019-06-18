#!/bin/sh

# configure server volumes
mkdir -p ./go/server/godata/config
mkdir -p ./go/server/godata/plugins/external
mkdir -p ./go/server/home-go-dir
cp cruise-config.xml go/server/godata/config/cruise-config.xml

curl --location --fail https://github.com/ashwanthkumar/gocd-build-github-pull-requests/releases/download/v1.3.5/github-pr-poller-1.3.5.jar > go/server/godata/plugins/external/github-pr-poller-1.3.5.jar
curl --location --fail https://github.com/gocd-contrib/gocd-build-status-notifier/releases/download/1.6-73/github-pr-status-1.6-73.jar > go/server/godata/plugins/external/github-pr-status-1.6-73.jar

# convigure agent volumes
mkdir -p ./go/agent/godata
mkdir -p ./go/agent/home-go-dir
