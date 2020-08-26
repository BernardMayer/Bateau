#!/bin/bash

# Copier le fichier ~/.qtVlm/nmeaRecord.txt
# vers un repertoire cible,
# en lui ajoutant un timestamp et en modifiant son extension
# Ajout du script fourni par Meltemus pour lancer qtVlm

TS=$(date +"%Y%m%d-%H%M%S")
sourceDir=/home/pi/.qtVlm
sourceFile=nmeaRecord.txt
targetDir=${sourceDir}
targetFile=qtVlm_nmeaRecord-${TS}.nmea

if [[ -e ${sourceDir}/${sourceFile} ]]
then
	mv --force ${sourceDir}/${sourceFile} ${targetDir}/${targetFile}

	# Tgz 
	cd ${targetDir}
	tar -czvf ${targetFile}.tgz  ${targetFile}
	if [ $? -eq 0 ]
	then
		rm --force ${targetDir}/${targetFile}
	fi
	cd -
fi

# Run qtVlm

HERE=$PWD

cd /home/pi/Bateau/TaC/qtVlm

./qtVlm -platform xcb

cd $HERE

exit 0
