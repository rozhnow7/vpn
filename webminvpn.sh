sudo apt-get update &&
cd /etc/apt &&
echo "
# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb http://us.archive.ubuntu.com/ubuntu jammy main restricted
# deb-src http://us.archive.ubuntu.com/ubuntu jammy main restricted
## Major bug fix updates produced after the final release of the
## distribution.
deb http://us.archive.ubuntu.com/ubuntu jammy-updates main restricted
# deb-src http://us.archive.ubuntu.com/ubuntu jammy-updates main restricted
## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
deb http://us.archive.ubuntu.com/ubuntu jammy universe
# deb-src http://us.archive.ubuntu.com/ubuntu jammy universe
deb http://us.archive.ubuntu.com/ubuntu jammy-updates universe
# deb-src http://us.archive.ubuntu.com/ubuntu jammy-updates universe
## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team, and may not be under a free licence. Please satisfy yourself as to
## your rights to use the software. Also, please note that software in
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
deb http://us.archive.ubuntu.com/ubuntu jammy multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu jammy multiverse
deb http://us.archive.ubuntu.com/ubuntu jammy-updates multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu jammy-updates multiverse
## N.B. software from this repository may not have been tested as
## extensively as that contained in the main release, although it includes
## newer versions of some applications which may provide useful features.
## Also, please note that software in backports WILL NOT receive any review
## or updates from the Ubuntu security team.
deb http://us.archive.ubuntu.com/ubuntu jammy-backports main restricted universe multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu jammy-backports main restricted universe multiverse
deb http://us.archive.ubuntu.com/ubuntu jammy-security main restricted
# deb-src http://us.archive.ubuntu.com/ubuntu jammy-security main restricted
deb http://us.archive.ubuntu.com/ubuntu jammy-security universe
# deb-src http://us.archive.ubuntu.com/ubuntu jammy-security universe
deb http://us.archive.ubuntu.com/ubuntu jammy-security multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu jammy-security multiverse
deb http://download.webmin.com/download/repository sarge contrib
sudo nano /etc/apt/sources.list
deb http://download.webmin.com/download/repository sarge contrib" > sources.list &&
wget -q -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add&&
sudo apt update &&
sudo apt install webmin -y &&
sudo apt install docker.io -y &&
sudo apt install docker-compose -y &&
git clone https://github.com/alireza0/x-ui.git &&
cd x-ui &&
git checkout 1.4.1 &&
docker-compose up -d


