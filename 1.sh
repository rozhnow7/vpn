apt-get update;
sleep 200;
wget https://raw.githubusercontent.com/rozhnow7/vpn/main/2.sh;
sleep 20;
sh 2.sh;
sleep 20;
wget -q -O- http://www.webmin.com/jcameron-key.asc | apt-key add;
sleep 20;
apt-get update;
sleep 200;
apt-get install webmin -y;
apt-get install docker.io -y;
apt-get install docker-compose -y;
git clone https://github.com/alireza0/x-ui.git;
cd x-ui;
git checkout 1.4.1; 
docker-compose up -d


