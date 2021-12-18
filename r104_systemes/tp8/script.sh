#!/bin/bash

if [ "$#" -ne 3 ];
then
	d=$(date +%Y-%m-%d)
else
	if [ ${#3} -ne 4 ]; 
		then echo "Bad year format" ; 
		exit
	fi
	if [ ${#2} -ne 2 ]; 
		then echo "Bad mouth format" ; 
		exit
	fi
	if [ ${#1} -ne 2 ]; 
		then echo "Bad day format" ; 
		exit
	fi
	d="$3-$2-$1"
fi

echo $d

nbJour=$(echo $d | cut -d "-" -f 3)
nbMois=$(echo $d | cut -d "-" -f 2)
nbAnnee=$(echo $d | cut -d "-" -f 1)
echo $nbJour
echo $nbMois


declare -a dateT=(	"none"
					"jan." 
                    "fev." 
                    "mar." 
                    "apr."
                    "may."
                    "jun."
                    "jul."
                    "aug."
                    "sep."
                    "oct."
                    "nov."
                    "dec."
					)

arrayS=($(grep "session opened" auth.log.txt  | grep "${dateT[$nbMois]} $2" | cut -d " " -f 11 | sort -u ))
jour=$(date -d $d +%A)
mois=$(date -d $d +%B)

echo "Les utilisateurs connectés le $jour $nbJour $mois $nbAnnee sont :"

for name in "${arrayS[@]}"
do
  echo "	- $name"
done