pipeline{
    agent any
    stages{
        stage("Build"){
            steps{
                ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                ./jenkins/build/build.sh
            }
        }
        stage("Test"){
            steps{
                ./jenkins/test/mvn.sh mvn test
            }
        }
        stage("Push"){
            steps{
                ./jenkins/push/push.sh
            }
        }
        stage("Deploy"){
            steps{
		./jenkins/deploy/deploy.sh
            }
        }
    }
}
