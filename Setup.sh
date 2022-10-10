

echo "Do you want to Install |||--> Google Chrome <---||| ,If want press ||--->  y  <---|| or press ||--->  n <---|| to continue"
      read press
      if [ $press == "y" ];then
     echo "Yeah !! Started to install Chrome"
     echo "--------------------------------------------------"
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt install ./google-chrome-stable_current_amd64.deb
echo "--------Finished Installing Google-Chrome-------------"

fi

 echo "Do you want to Install |||--> Docker <---||| ,If want press ||-    -->  y  <---|| or press ||--->  n <---|| to continue"
         read press
         if [ $press == "y" ];then
        echo "Yeah !! Started to install Docker"
        echo "--------------------------------------------------"
	sudo apt-get remove docker docker-engine docker.io containerd run
	sudo apt-get update
	sudo apt-get

	install apt-transport-https ca-certificates gnupg-agent software-properties-common       	

	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	sudo apt-get update

	sudo apt-get install docker-ce docker-ce-cli containerd.io

	sudo usermod -aG docker $USER


echo "------------------------------------------------"
docker --version
   echo "--------Finished Installing Docker-------------"

echo  "---------Installing Docker Compose--------------"


sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose   

sudo chmod +x /usr/local/bin/docker-compose

echo "--------------------------------------------------"

echo $(docker-compose --version)
echo "------------Finished Installing Docker Compose---------"

   fi


   echo "Do you want to Install ||---> Git <---|| ,If want press ||--->  y <---|| or press ||--->  n <---||to continue"
   read press
   if [ $press == "y" ];then
  echo "Yeah !! Started to install GIt"
  echo "--------------------------------------------------"
sudo apt-get update
sudo apt-get install git-all
echo "Enter your  user-name  email"
read userName email
git config --global user.name $userName
git config --global user.email $email
echo $(git version)
echo "------------Finished Installing Git---------------"

fi
echo "Do you want to Install ||---> Solidity <---||,If want press ||---> y <---||or press ||---> n <---|| to continue"
read press 
if [ $press == "y" ];then
echo "Yeah !! Started to install Solidity"
echo "--------------------------------------------------"

sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install solc
echo "--------------------------------------------------"
 echo $(solc --version)
echo "----------------------Finished Installing Solidity----------------------------"

fi
echo "Do you want to Install ||---> Ganache <---||,If want press ||---> y <---||or press ||---> n <---|| to continue"
  read press
  if [ $press == "y" ];then
  echo "Yeah !! Started to install Ganache"
  echo "--------------------------------------------------"
   
   wget https://github.com/trufflesuite/ganache-ui/releases/download/v2.4.0/ganache-2.4.0-linux-x86_64.AppImage
  chmod a+x ganache-1.3.0-x86_64.AppImage 
   echo "--------------------------------------------------"
   
   echo "----------------------Finished Installing Ganache----------------------------"
   
   fi


echo "Do you want to Install ||---> C++ <---||,If want press ||---> y <---|| or press ||---> n <---||to continue"
read press
 if [ $press == "y" ];then
echo "Yeah !! Started to install C++"
echo "--------------------------------------------------"
sudo apt update
sudo apt install gcc g++
sudo apt install build-essential
echo "--------------------------------------------------"
c++ --version
echo "----------------------Finished Installing C++----------------------------"
fi
echo "Do you want to Install ||--->  JAVA <---||, If want press ||---> y <---|| or press ||--->  n <---|| to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install JAVA"
echo "--------------------------------------------------" 
sudo apt update 
sudo apt install openjdk-17-jdk
sudo apt update
sudo apt install openjdk-17-jre
echo "--------------------------------------------------"
echo $(java --version)
echo "----------------------Finished Installing Java----------------------------"
fi
echo "Do you want to Install ||---> Python <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"
read press 
if [ $press == "y" ];then
echo "Yeah !! Started to install Python"
 echo "--------------------------------------------------" 
sudo apt update
sudo apt install python3
sudo apt-get -y install python3-pip
echo "--------------------------------------------------"
echo $(python3 --version)
echo "----------------------Finished Installing Python----------------------------"
echo $(pip3 --version)
echo "----------------------Finished Installing Pip----------------------------"
fi
echo "Do you want to Install ||---> Golang <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install GO"
echo "--------------------------------------------------" 
sudo apt update
sudo apt install golang
echo "--------------------------------------------------"
echo $(go version)
echo "----------------------Finished Installing Go----------------------------"
fi
echo "Do you want to Install ||---> NVM Node <---||, If want press ||---> y <---|| or press ||---> n <---||to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install NVM"
echo "--------------------------------------------------"
sudo apt update
sudo apt install curl
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc 
nvm install node

echo "--------------------------------------------------"
echo $(node --version)
echo "-----------------------Finished Installing NVM and Node(latest)--------------------------"
fi
echo "Do you want to Install ||---> Sublime-Text <---||, If want press ||--->  y <---|| or press ||---> n <---|| to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install Sublime-text"
echo "--------------------------------------------------"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

sudo apt-get install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

sudo apt-get install sublime-text

echo "--------------------------------------------------"
echo $(subl --version)
echo "-----------------------Finished Installing Sublime-Text---------------------------"

fi
echo "Do you want to Install ||---> Eclipse <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install Eclipse"
echo "--------------------------------------------------"
wget https://mirrors.ustc.edu.cn/eclipse/oomph/epp/2022-09/R/eclipse-inst-jre-linux64.tar.gz
sudo tar -xf eclipse-inst-jre-linux64.tar.gz
cd eclipse-installer/
./eclipse-inst
echo "-----------------------Finished Installing Eclipse----------------------------"

fi
echo "Do you want to Install ||---> VS-Code <---||, If want press ||---> y <---||or press ||---> n <---||to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install VS-Code"
echo "--------------------------------------------------"
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
sudo apt upgrade
 echo "--------------------------------------------------"
  3 echo $(code --version)
  4 echo "--------------------Finished Installing VS-CODE------------------------------"
fi
echo "Do you want to Install ||--->  Intellij <---||, If want press ||---> y <---|| or press ||---> n <--- to continue"
 read press
 if [ $press == "y" ];then
 echo "Yeah !! Started to install Intellij"
 echo "--------------------------------------------------"

sudo apt update
 sudo apt install vim apt-transport-https curl wget software-properties-common
sudo add-apt-repository ppa:mmk2410/intellij-idea -y
sudo apt install intellij-idea-community -y
echo "-----------------------Finished Installing Intellij-Idea-Community------------------"
fi

echo "Do you want to Install ||---> Mysql <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"
 read press
 if [ $press == "y" ];then
 echo "Yeah !! Started to install Mysql"
 echo "--------------------------------------------------"

sudo apt update
sudo apt upgrade
sudo apt install mysql-server
sudo apt install mysql-client
sudo mysql_secure_installation
sudo systemctl start mysql
sudo systemctl status mysql
mysql -u root -p

echo "--------------------------------------------------"
 11 echo $(mysql --version)
 12 echo "-------------------Finished Installing Mysql-------------------------------"

echo "-----------> Installing Mysql Workbench <-----------"

sudo apt install snapd
sudo snap install mysql-workbench-community

echo "-----------Finished Installing Mysql Workbench----------------"

fi
 echo "Do you want to Install  ||---> Mongodb <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"

read press
if [ $press == "y" ];then
 echo "Yeh !! Started to install Mongodb"
 echo "--------------------------------------------------"

sudo apt update
sudo apt upgrade -y
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
sudo apt-get install gnupg
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt update
curl -LO http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1-1ubuntu2.1~18.04.20_amd64.deb
sudo dpkg -i ./libssl1.1_1.1.1-1ubuntu2.1~18.04.20_amd64.deb

echo "-----------> Installing Mongodb COmpass <-----------"
 wget https://downloads.mongodb.com/compass/mongodb-compass_1.28.1_amd64.deb
sudo apt install ./mongodb-compass_1.28.1_amd64.deb

echo "-------Finished Installing Mongodb----------"

fi

 echo "Do you want to Install ||---> Zoom <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install Zoom"
echo "--------------------------------------------------"
sudo apt update
sudo apt upgrade
sudo snap install zoom-client

echo "-----------Finished Installing Zoom----------------"

fi
 
   echo "Do you want to Install  ||---> Obs-Studio <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"
  read press
  if [ $press == "y" ];then
   echo "Yeah !! Started to install Obs-Studio"
   echo "--------------------------------------------------"
   sudo apt update
   sudo apt upgrade
   sudo apt install obs-studio
  
  echo "-----------Finished Installing Obs-Studio----------------"
  
  fi

 echo "Do you want to Install ||---> VLC <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"
    read press
    if [ $press == "y" ];then
    echo "Yeah !! Started to install VLC"
     echo "--------------------------------------------------"
      sudo apt update
      sudo apt upgrade
      sudo apt install VLC
   
     echo "-----------Finished Installing VLC----------------"
   
   fi
 echo "Do you want to Install ||--->  Telegram <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"
    read press
    if [ $press == "y" ];then
     echo "Yeah !! Started to install Telegram"
     echo "--------------------------------------------------"
      sudo apt update
      sudo apt upgrade
  
    sudo apt install telegram-desktop
   
     echo "-----------Finished Installing Telegram----------------"
   
     fi
echo "Do you want to Install ||--->  Maven <---||, If want press ||---> y <---|| or press ||---> n <---|| to continue"
      read press
     if [ $press == "y" ];then
       echo "Yeah !! Started to install Maven"
        echo "--------------------------------------------------"
         sudo apt update
         sudo apt upgrade
   
       sudo apt install maven
   
        echo "-----------Finished Installing Maven----------------"
   
        fi
echo "Do you want to Install ||---> LaTex <---||,If want press ||---> y <---|| or press ||---> n <---||to continue"
read press
 if [ $press == "y" ];then
echo "Yeah !! Started to install LaTex"
echo "--------------------------------------------------"
sudo add-apt-repository ppa:jonathonf/texlive
sudo apt update
sudo apt install texlive-full

echo "--------------------------------------------------"
latex --version
echo "----------------------Finished Installing C++----------------------------"
fi

