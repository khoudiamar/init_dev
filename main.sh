#!/bin/bash


if test $1 = "-help"
	then
	echo "-Name : Afficher le nom de l’application et une petite description.
— Syntax : Afficher la syntaxe d’utilisation de la commande initdev.
— args : Lister les arguments et donner une description de chaque argument.
— author : Afficher le nom et l’email de l’auteur de l’application."
else

if test $# -gt 4
then
echo "Expected arguments, please check the help : initdev –help"
exit 1

else

mkdir $1
touch $1/LICENCES
touch $1/makefile

if test $# -eq 2
then

case $2 in 
	 -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES
           touch $1/main ;;
     -MIT) echo Licence MIT >> $1/LICENCES
           touch $1/main;;
      *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac

touch $1/main

fi	


if test $# -eq 3
then

case $2 in 
	 -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES
           touch $1/main ;;
     -MIT) echo Licence MIT >> $1/LICENCES
           touch $1/main;;
      -git) echo "You must set project type, please check the help : initdev –help";;
      *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac

case $3 in 
	 -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES
           touch $1/main ;;
     -MIT) echo Licence MIT >> $1/LICENCES
           touch $1/main;;
      -git) git init $1;;
      *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac


case $4 in 
	 -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES
           touch $1/main ;;
     -MIT) echo Licence MIT >> $1/LICENCES
           touch $1/main;;
      -git) git init $1;;
      *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac

touch $1/main

fi




exit 0

fi
fi