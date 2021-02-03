echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

echo "*********************"
echo "*** Deploying App ***"
echo "*********************"

scp -i /opt/aws-key /tmp/.auth ec2-user@ec2-3-133-11-6.us-east-2.compute.amazonaws.com:/tmp/.auth
scp -r -i /opt/aws-key ./jenkins/deploy/publish ec2-user@ec2-3-133-11-6.us-east-2.compute.amazonaws.com:~/maven/
ssh -i /opt/aws-key ec2-user@ec2-3-133-11-6.us-east-2.compute.amazonaws.com "~/maven/deploy.sh"
