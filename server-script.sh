#!/bin/bash
set -e
#sudo yum install java -y
sudo yum install git -y
#sudo yum install maven -y
sudo yum install docker -y
sudo service docker start

#!/bin/bash
sudo systemctl start docker
sudo systemctl enable docker

if [ -d "/home/ec2-user/new-taxi-app" ]
then
    echo "Repo is cloned and exists"

    cd /home/ec2-user/new-taxi-app

    git pull origin master

else
    echo "Cloning repository"

    git clone https://github.com/AbhishekK612/new-taxi-app.git \
        /home/ec2-user/new-taxi-app
fi

cd /home/ec2-user/new-taxi-app

echo "Building Docker image: $1"

sudo docker build -t "$1" .

echo "Docker image $1 built successfully"