#!/usr/bin/env bash

mkdir ${JENKINS_HOME} && mkdir ${JENKINS_HOME}/plugins/ && mkdir ${JENKINS_HOME}/jobs/ &&  mkdir ${JENKINS_HOME}/init.groovy.d/

cp -a /jenkins-job/plugins/. ${JENKINS_HOME}/plugins/
cp -a /jenkins-job/pipeline/seedjob.groovy ${JENKINS_HOME}/jobs/
cp -a /jenkins-job/pipeline/init.groovy ${JENKINS_HOME}/init.groovy.d/

/jenkins-job/scripts/install-jjb.sh
/jenkins-job/scripts/install-tools.sh