#!/bin/bash

# Copier le fichier ~/.qtVlm/nmeaRecord.txt
# vers un repertoire cible,
# en lui ajoutant un timestamp et en modifiant son extension

# https://abs.traduc.org/abs-5.0-fr/ch09s02.html

TS=$(date +"%Y%m%d-%H%M%S")
# echo ${TS}
sourceDir=/home/pi/.qtVlm
sourceDir=~/var
sourceFile=nmeaRecord.txt
targetDir=/home/pi/Bateau/TaC/traces
targetDir=~/var/log
targetDir=${sourceDir}
targetFile=qtVlm_nmeaRecord-${TS}.nmea

if [[ -f ${sourceDir}/${sourceFile} ]]
then
	# echo "mv --verbose --update --force ${sourceDir}/${sourceFile} ${targetDir}/${targetFile}"
	mv --force ${sourceDir}/${sourceFile} ${targetDir}/${targetFile}

	# Tgz ?
	cd ${targetDir}
	tar -czvf ${targetFile}.tgz  ${targetFile}
	if [ $? -eq 0 ]
	then
		rm --force ${targetDir}/${targetFile}
	fi
	cd -
fi

# Run qtVlm
