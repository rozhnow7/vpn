apt-get update;
echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
wget -q -O- http://www.webmin.com/jcameron-key.asc | apt-key add;
apt-get update;
apt-get install webmin -y;
apt-get install docker.io -y;
apt-get install docker-compose -y;
git clone https://github.com/alireza0/x-ui.git;
cd x-ui;
git checkout 1.4.1; 
docker-compose up -d
