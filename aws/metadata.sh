#!/bin/bash
#bash script to get the AWS ec2 local metadata for instanceType, region, availabilityZone and ip address
export REGION=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | grep 'region' | cut -d\" -f4`
export INSTANCE_TYPE=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | grep 'instanceType' | cut -d\" -f4`
export AVAILABILITY_ZONE=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | grep 'availabilityZone' | cut -d\" -f4`
export PRIVATE_IP=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | grep 'privateIp' | cut -d\" -f4`
export PUBLIC_IP=`curl -s http://169.254.169.254/latest/meta-data/public-ipv4`
