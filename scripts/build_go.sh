#!/usr/bin/env bash

go get github.com/petems/terraform-provider-extip

cd ~/go/src/github.com/petems/terraform-provider-extip

# build the plugin
make build

mkdir -p /vagrant/terraform.d/plugins/linux_amd64

cp ~/go/bin/terraform-provider-extip /vagrant/terraform.d/plugins/linux_amd64/