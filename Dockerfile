FROM cemmersb/centos-jdk8

ADD . /jenkins-job/

RUN chmod 777 /jenkins-job/scripts/initjenkins.sh && /jenkins-job/scripts/initjenkins.sh

CMD java -jar /jenkins-job/jenkinswar/jenkins.war -Djenkins.install.runSetupWizard=false

EXPOSE 8080