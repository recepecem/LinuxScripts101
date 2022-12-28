#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

mystring=$(java --version)
first=${mystring%% *}

if [ $first != "openjdk" ]
then
	sudo apt install -y default-jdk
fi

wget https://www.jflap.org/jflaptmp/july27-18/JFLAP7.1.jar
mkdir /home/JFLAP
mv JFLAP7.1.jar /home/JFLAP
touch /usr/local/bin/jflap
echo "java -jar /home/JFLAP/JFLAP7.1.jar" > /usr/local/bin/jflap
chmod +x /usr/local/bin/jflap
echo "jflap saved under /user/local/bin as a executable program. type 'jflap' to run it."
rm jflap.sh
exit
