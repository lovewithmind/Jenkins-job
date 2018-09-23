#!/usr/bin/env bash

yes | yum install epel-release

yes | yum install python-pip -y

pip install jenkins-job-builder