job('seed-job') {
    scm {
        git {
            remote {
                credentials('default-creds')
                name('pipeline-definitions')
                url('PIPELINE_DEFINITIONS')
            }
            extensions {
                relativeTargetDirectory('/pipeline')
            }
        }
    }
    steps{
        shell("jenkins-jobs --conf /jenkins-job/scripts/jenkins-config.ini update update -r /pipeline/jobs:/pipeline/templates")
    }
}