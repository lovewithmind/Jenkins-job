#!/usr/bin/env bash

mkdir root/.jenkins/ && mkdir root/.jenkins/plugins/ && mkdir root/.jenkins/jobs/ &&  mkdir root/.jenkins/init.groovy.d/

cp -a /jenkins-job/plugins/. /root/.jenkins/plugins/
cp -a /jenkins-job/pipeline/seedjob.groovy /root/.jenkins/jobs/
cp -a /jenkins-job/pipeline/init.groovy /root/.jenkins/init.groovy.d/

/jenkins-job/scripts/install-jjb.sh