#!/bin/bash


####################################################################################
#
#  Description : déploiement à la volée de conteneur docker
#
#  Auteur : Ahmed
#
#  Date : 05/03/2022
#
####################################################################################

if [ "$1" == "--create" ];then
	
	echo "notre option est --create"
	nb_machine=1 
	[ $2 != "" ] && nb_machine=$2

	docker run -tid --name $USER-alpine alpine:latest
	echo "j'ai créé ${nb_machine}"

elif [ "$1" == "--drop" ] ;then
	echo "notre option est --drop"
	docker rm -f $USER-alpine 
elif [ "$1" == "--info" ];then
	echo "notre option est --info"
elif [ "$1" == "--start" ];then 
	echo "notre option est --start"
elif [ "$1" == "--ansible" ];then 
	echo "notre option est --ansible"
else	
	echo "
		Options :
			 - -- create : lancer des conteneurs
			 - -- drop :  supprimer les conteneur créer par le deploy.sh
			 - -- info :  caractéristique des conteneurs (ip, nom, user ...)
			 - -- start : redémarrage des conteneurs
			 - -- ansible : déploiement arborescence ansible
		"
fi
