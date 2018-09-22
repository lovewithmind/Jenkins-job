FROM cemmersb/centos-jdk8

ADD . /jenkins-job/

RUN chmod 777 /jenkins-job/scripts/initjenkins.sh && /jenkins-job/scripts/initjenkins.sh

CMD java -Djenkins.install.runSetupWizard=false -jar /jenkins-job/jenkinswar/jenkins.war

EXPOSE 8080