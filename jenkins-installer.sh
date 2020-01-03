# 51 setting up Jenkins in the cloud (Digital Ocean)
sudo apt-get update && sudo apt-get upgrade -y
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update && sudo apt-get install -y vim git puppet jenkins
# from https://discoposse.com/2014/05/17/deploying-a-jenkins-server-on-digital-ocean-with-vagrant/