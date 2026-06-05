#!/bin/bash
set -x
echo "print s3 buckets"
aws s3 ls
echo "print instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
