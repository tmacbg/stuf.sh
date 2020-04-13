#!/bin/bash

jsonfile=$1
userstat=$2
length=$(jq '.results|length' $jsonfile) 

setUrl(){
	url=$(jq .results[$cntr].url $jsonfile)
}

getUrl(){
	echo "$url"|sed 's/"//g'|sed 's/^.......//g'
}

printStat(){
cntr=0
while [ $cntr -ne $length ]
do
	status=$(jq .results[$cntr].status $jsonfile)
	setUrl
	if [ $status -eq $userstat ]
	then
	        getUrl	
		cntr=$((cntr+1))
	else
		cntr=$((cntr+1))
	fi
done
}

printAll(){
cntr=0
while [ $cntr -ne $length ]
do
	setUrl
	getUrl
	cntr=$((cntr+1))
done
}

if [ ! $userstat ]
then
printAll
fi

if [ $userstat ]
then
printStat
fi
