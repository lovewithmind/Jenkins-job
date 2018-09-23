#!/usr/bin/env bash

mkdir root/.jenkins/ && mkdir root/.jenkins/plugins/

cp -a /jenkins-job/plugins/. /root/.jenkins/plugins/

/jenkins-job/scripts/install-jjb.sh