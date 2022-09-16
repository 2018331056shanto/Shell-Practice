 echo "Do you want to Install Google Chrome ,If want press y or pres        s n to continue"
      read press
      if [ $press == "y" ];then
     echo "Yeah !! Started to install Chrome"
     echo "--------------------------------------------------"
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
echo "--------Finished Installing Google-Chrome-------------"

fi

   echo "Do you want to Install Git ,If want press y or pres    s n to continue"
   read press
   if [ $press == "y" ];then
  echo "Yeah !! Started to install GIt"
  echo "--------------------------------------------------"
sudo apt-get update
sudo apt-get install git-all
echo $(git version)
echo "------------Finished Installing Git---------------"

fi
echo "Do you want to Install Solidity ,If want press y or press n to continue"
read press 
if [ $press == "y" ];then
echo "Yeah !! Started to install Solidity"
echo "--------------------------------------------------"

sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install solc
echo "--------------------------------------------------"
 echo $(solc --version)
echo "--------------------------------------------------"
fi
echo "Do you want to Install C++,If want press y or press n to continue"
read press
 if [ $press == "y" ];then
echo "Yeah !! Started to install C++"
echo "--------------------------------------------------"
sudo apt update
sudo apt install gcc g++
sudo apt install build-essential
echo "--------------------------------------------------"
c++ --version
echo "--------------------------------------------------"
fi
echo "Do you want to Install JAVA, If want press y or press n to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install JAVA"
echo "--------------------------------------------------" 
sudo apt update 
sudo apt install default-jdk
sudo apt update
sudo apt install default-jre
echo "--------------------------------------------------"
echo $(java --version)
echo "--------------------------------------------------"
fi
echo "Do you want to Install Python, If want press y or press n     to continue"
read press 
if [ $press == "y" ];then
echo "Yeah !! Started to install Python"
 echo "--------------------------------------------------" 
sudo apt update
sudo apt install python3
sudo apt-get -y install python3-pip
echo "--------------------------------------------------"
echo $(python3 --version)
echo "--------------------------------------------------"
echo $(pip3 --version)
echo "--------------------------------------------------"
fi
echo "Do you want to Install Golang, If want press y or press n to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install GO"
echo "--------------------------------------------------" 
sudo apt update
sudo apt install golang
echo "--------------------------------------------------"
echo $(go --version)
echo "--------------------------------------------------"
fi
echo "Do you want to Install NVM Node, If want press y or press nto continue"
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
echo "--------------------------------------------------"
fi
echo "Do you want to Install Sublime-Text, If want press y or press     n to continue"
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
echo "--------------------------------------------------"

fi
echo "Do you want to Install Eclipse, If want press y or     press     n to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install Eclipse"
echo "--------------------------------------------------"
wget https://mirrors.ustc.edu.cn/eclipse/oomph/epp/2022-09/R/eclipse-inst-jre-linux64.tar.gz
sudo tar -xf eclipse-inst-jre-linux64.tar.gz
cd eclipse-installer/
./eclipse-inst


fi
echo "Do you want to Install VS-Code, If want press y or     p    ress     n to continue"
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
  4 echo "--------------------------------------------------"
fi
echo "Do you want to Install Intellij, If want press y or     press n to continue"
 read press
 if [ $press == "y" ];then
 echo "Yeah !! Started to install Intellij"
 echo "--------------------------------------------------"

sudo apt update
 sudo apt install vim apt-transport-https curl wget software-properties-common
sudo add-apt-repository ppa:mmk2410/intellij-idea -y
sudo apt install intellij-idea-community -y

fi

echo "Do you want to Install Mysql, If want press y or         press n to continue"
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
sudo mysql -u root -p

echo "--------------------------------------------------"
 11 echo $(mysql --version)
 12 echo "--------------------------------------------------"

echo "Installing Mysql Workbench"

sudo apt install snapd
sudo snap install mysql-workbench-community

echo "-----------Finished Installing Mysql Workbench----------------"

fi
 echo "Do you want to Install Mongodb, If want press y or                 press n to continue"

read press
if [ $press == "y" ];then
 echo "Yeah !! Started to install Zoom"
 echo "--------------------------------------------------"
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

sudo apt-get update

sudo apt-get install -y mongodb-org

sudo systemctl start mongod

sudo systemctl status mongod

echo "Installing Mongodb COmpass"
 wget https://downloads.mongodb.com/compass/mongodb-compass_1.28.1_amd64.deb
sudo apt install ./mongodb-compass_1.28.1_amd64.deb

echo "-------Finished Installing Mongodb----------"

fi

 echo "Do you want to Install Zoom, If want press y or             press n to continue"
read press
if [ $press == "y" ];then
echo "Yeah !! Started to install Zoom"
echo "--------------------------------------------------"
sudo apt update
sudo apt upgrade
sudo snap install zoom-client

echo "-----------Finished Installing Zoom----------    ------"

fi
 
   echo "Do you want to Install Obs-Studio, If want press y or                 press n to continue"
  read press
  if [ $press == "y" ];then
   echo "Yeah !! Started to install Obs-Studio"
   echo "--------------------------------------------------"
   sudo apt update
   sudo apt upgrade
   sudo apt install obs-studio
  
  echo "-----------Finished Installing Obs-Studio----------    ------"
  
  fi

 echo "Do you want to Install VLC, If want press y or                     press n to continue"
    read press
    if [ $press == "y" ];then
    echo "Yeah !! Started to install VLC"
     echo "--------------------------------------------------"
      sudo apt update
      sudo apt upgrade
      sudo apt install VLC
   
     echo "-----------Finished Installing VLC----------        ------"
   
   fi
 echo "Do you want to Install Telegram, If want press y or                     press n to continue"
    read press
    if [ $press == "y" ];then
     echo "Yeah !! Started to install Telegram"
     echo "--------------------------------------------------"
      sudo apt update
      sudo apt upgrade
  
    sudo apt install telegram-desktop
   
     echo "-----------Finished Installing Telegram----------        ------"
   
     fi

