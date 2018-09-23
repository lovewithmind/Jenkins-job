FROM cemmersb/centos-jdk8

ADD . /jenkins-job/

RUN chmod 777 -R /jenkins-job/scripts/ && /jenkins-job/scripts/initjenkins.sh

CMD java -Djenkins.install.runSetupWizard=false -jar /jenkins-job/jenkinswar/jenkins.war

EXPOSE 8080