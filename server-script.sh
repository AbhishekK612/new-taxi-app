#sudo yum install java -y
sudo yum install git -y
#sudo yum install maven -y
sudo yum install docker -y
sudo service docker start


if [ -d "new-taxi-app" ]
then
  echo "repo is cloned and exists"
  cd /home/ec2-user/new-taxi-app
  git pull origin master
else
  git clone https://github.com/AbhishekK612/new-taxi-app.git
fi

cd /home/ec2-user/new-taxi-app
#mvn package

sudo docker build -t taxi-booking $1 .