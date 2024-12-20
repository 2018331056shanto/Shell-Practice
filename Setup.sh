#!/bin/bash

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

sudo apt-get install gnupg curl
curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
   --dearmor
   echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
   sudo apt-get update
   sudo apt-get install -y mongodb-org


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

echo "Do you want to Install ||---> Brave Browser <---||,If want press ||---> y <---|| or press ||---> n <---||to continue"
read press
 if [ $press == "y" ];then
echo "Yeah !! Started to install LaTex"
echo "--------------------------------------------------"
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
echo "--------------------------------------------------"
echo "----------------------Finished Installing C++----------------------------"
fi

echo "Do you want to Install ||---> Postgresql  <---||,If want press ||---> y <---|| or press ||---> n <---||to continue"
read press
 if [ $press == "y" ];then
echo "Yeah !! Started to install Postgres"
echo "--------------------------------------------------"
sudo apt update
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql.service

echo "--------------------------------------------------"
echo "----------------------Finished Installing Postgres----------------------------"
fi

echo "Do you want to Install ||---> pgadmin  <---||,If want press ||---> y <---|| or press ||---> n <---||to continue"
read press
 if [ $press == "y" ];then
echo "Yeah !! Started to install pgadmin"
echo "--------------------------------------------------"
sudo apt update
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4
echo "--------------------------------------------------"
echo "----------------------Finished Installing Postgres----------------------------"
fi

echo "Do you want to Install ||---> postman  <---||,If want press ||---> y <---|| or press ||---> n <---||to continue"
read press
 if [ $press == "y" ];then
echo "Yeah !! Started to install Postman"
echo "--------------------------------------------------"
sudo apt update
curl -O https://dl.pstmn.io/download/latest/linux_64
cd Downloads
	sudo rm -rf /opt/Postman/


echo "--------------------------------------------------"
echo "----------------------Finished Installing Postgres----------------------------"
fi

echo "Do you want to Install ||---> KAFKA  <---||,If want press ||---> y <---|| or press ||---> n <---||to continue"
read press
 if [ $press == "y" ];then
echo "Yeah !! Started to install Postman"
echo "--------------------------------------------------"
sudo apt update
sudo wget https://dlcdn.apache.org/kafka/3.9.0/kafka-3.9.0-src.tgz
tar -xvzf kafka-3.9.0-src.tgz
sudo mv kafka-3.9.0-src.tgz /opt/kafka

/opt/kafka/bin/zookeeper-server-start.sh /opt/kafka/config/zookeeper.properties
/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties



# Define the path to the systemd service file
SERVICE_FILE="/etc/systemd/system/zookeeper.service"

# Create the zookeeper service file with the required content
sudo bash -c "cat > $SERVICE_FILE <<EOL
[Unit]
Description=Apache Zookeeper Service
After=network.target

[Service]
ExecStart=/opt/kafka/bin/zookeeper-server-start.sh /opt/kafka/config/zookeeper.properties
ExecStop=/opt/kafka/bin/zookeeper-server-stop.sh
Restart=always
User=shanto
Group=shanto
RestartSec=3

[Install]
WantedBy=multi-user.target
EOL"



# Print a message that the service file is created
echo "Zookeeper service file created successfully."

SERVICE_FILE1="/etc/systemd/system/kafka.service"

sudo bash -c "cat > $SERVICE_FILE1 <<EOL
[Unit]
Description=Apache Kafka Service
After=zookeeper.service

[Service]
ExecStart=/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties
ExecStop=/opt/kafka/bin/kafka-server-stop.sh
Restart=always
User=shanto
Group=shanto
RestartSec=3

[Install]
WantedBy=multi-user.target
EOL"

echo "Kafka service file created successfully."

sudo chown -R shanto:shanto /opt/kafka
sudo chmod -R 755 /opt/kafka



# Reload systemd to pick up the new service file
sudo systemctl daemon-reload
echo "Systemd daemon reloaded."

# Start the Zookeeper service
sudo systemctl start zookeeper
echo "Zookeeper service started."

# Enable the Zookeeper service to start on boot
sudo systemctl enable zookeeper
echo "Zookeeper service enabled to start on boot."

# Check the status of the Zookeeper service
sudo systemctl status zookeeper


sudo systemctl daemon-reload
sudo systemctl start kafka
sudo systemctl enable kafka
sudo systemctl status kafka






cd Downloads
	sudo rm -rf /opt/Postman/


echo "--------------------------------------------------"
echo "----------------------Finished Installing Postgres----------------------------"
fi
