**EASY SETUP OF JENKINS**

This project deals with pre-configuring jenkins and make the process of creating pipeline easy

Docker image can be pull by using :

`docker pull lovewithmind/jenkins`


Jenkins spun on port `8080` 

Initially there is a pipeline created by default i.e `seed-jobs`
Seed job pipeline is used to seed jenkins pipeline from the repository mentioned.


For initial running of the seed job , we need to configure `seed-job` with:

1. git repository (repository where pipeline jobs are defined)

2. credentials (if needed)

Once it is setup it will fetch all the jobs & templates from the specified repo.

Example of `sample-jenkins-pipeline` repository is [here][1].

[1]: https://github.com/lovewithmind/sample-jenkins-pipeline "sample-jenkins-pipeline"