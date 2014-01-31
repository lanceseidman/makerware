#!/bin/sh

#####################################
# Lance Seidman MakerBot Makerware  #
#			                              #
#            INSTALLER   v1.0       #
#				                            #
#  Installer for Ubuntu/Linux Mint  #
# --------------------------------- #
# Problems? Comments? Tweet me at:  #
#          @LanceSeidman            #
#####################################

uname -a

echo "Which release of Ubuntu/Linux Mint do you use?"
echo "----------------------------------------------"
echo "1 - Saucy"
echo "2 - Raring"
echo "3 - Quantal"
echo "4 - Precise"
echo "Type the # for your release: "
read relresp

case $relresp in

 [1] | [one] )
 echo "Saucy selected..."
# sudo apt-add-repository 'deb http://downloads.makerbot.com/makerware/ubuntu saucy main'
 ;;

 [2] | [two] )
 echo "Raring selected..."
# sudo apt-add-repository 'deb http://downloads.makerbot.com/makerware/ubuntu raring main'
 ;;

 [3] | [three] )
 echo "Quantal selected..."
# sudo apt-add-repository 'deb http://downloads.makerbot.com/makerware/ubuntu quantal main'
 ;;

 [4] | [four] )
 echo "Precise selected..."
# sudo apt-add-repository 'deb http://downloads.makerbot.com/makerware/ubuntu precise main'
 ;;

*) echo "Invalid option. Goodbye!"
   exit
 ;;
esac

echo "Getting MakerBot Signing Key..."
#wget http://downloads.makerbot.com/makerware/ubuntu/dev@makerbot.com.gpg.key
echo "Adding Key to Keyring..."
#sudo apt-key add dev@makerbot.com.gpg.key 

echo "... Updating Software Sources..."
# Uncomment for Request OK by User
#sudo apt-get install makerware
#sudo aptitude install -y makerware

echo "... Removing Downloaded KeyRing..."
#rm dev@makerbot.com.gpg.key
clear

echo "Congrats! MakerWare is installed!"
echo "---------------------------------"
echo "To run, simply type makerware."
echo ""
echo "Would you like me to launch MakerWare now?"
echo "[Y/n]:"
read runnow

case $runnow in
 [Y] | [y] )
 echo "Launching MakerWare now..."
 makerware
 ;;

 [n] | [N] )
 echo "Have a nice day!"
 ;;

 *) echo "Option unknown. Installer Closing. Type makerware to launch MakerWare."
 exit
esac

echo "Goodbye & Happy 3D Printing!"
