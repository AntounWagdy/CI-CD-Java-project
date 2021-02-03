pipeline{
    agent any
    environment{
        PASS = credentials("registery_pass")
    }
    stages{
        stage("Build"){
            steps{
                sh './jenkins/build/mvn.sh mvn -B -DskipTests clean package'
                sh './jenkins/build/build.sh'
            }
            post{
                success{
                    archiveArtifacts artifacts: 'java_app/target/*.jar', fingerprint: true
                }
            }    
        }
        stage("Test"){
            steps{
                sh './jenkins/test/mvn.sh mvn test'
            }
            post{
                always{
                    junit 'java_app/target/surefire-reports/*.xml'
                }
            }
        }
        stage("Push"){
            steps{
                sh './jenkins/push/push.sh'
            }
        }
        stage("Deploy"){
            steps{
		sh './jenkins/deploy/deploy.sh'
            }
        }
    }
    post{
        always{
            sh 'congratulation ...'
        }
    }
}
