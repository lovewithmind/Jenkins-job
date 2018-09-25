job('seed-job') {
    scm {
        git {
            remote {
                credentials('default-creds')
                name('pipeline-definitions')
                url('PIPELINE_DEFINITIONS')
            }
        }
    }
    steps{
        shell("/jenkins-job/scripts/run-jjb.sh")
    }
}