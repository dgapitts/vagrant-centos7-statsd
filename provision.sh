#! /bin/bash
if [ ! -f /home/vagrant/already-installed-flag ]
then
  echo "ADD EXTRA ALIAS VIA .bashrc"
  cat /vagrant/bashrc.append.txt >> /home/vagrant/.bashrc

  #echo "GENERAL YUM UPDATE"
  #yum -y update
  #echo "INSTALL GIT"
  yum -y install git
  #echo "INSTALL TREE"
  yum -y install tree
  #echo "INSTALL unzip curl wget lsof"
  yum  -y install unzip curl wget lsof 


  # Add ShellCheck https://github.com/koalaman/shellcheck - a great tool for testing and improving the quality of shell scripts
  yum -y install epel-release
  yum -y install ShellCheck
  yum -y install stats     
  yum -y install docker     

  yum -y install python-pip
  pip install statsd
else
  echo "already installed flag set : /home/vagrant/already-installed-flag"
fi

