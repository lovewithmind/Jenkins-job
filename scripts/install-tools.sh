#!/usr/bin/env bash

install_maven(){
    yum install -y yum-utils
    yum-config-manager --add-repo http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo
    yum-config-manager --enable epel-apache-maven
    yum install -y apache-maven
}

install_git(){
    yum update -y nss curl libcurl
    yes | yum install git
}

install_maven
install_git