#!/bin/bash

jsonfile=$1
userstat=$2
length=$(jq '.results|length' $jsonfile) 
cntr=0
rescnt=0

while [ $cntr -ne $length ]
do
	status=$(jq .results[$cntr].status $jsonfile)
	url=$(jq .results[$cntr].url $jsonfile)
	if [ $status -eq $userstat ]
	then
		echo "$url"|sed 's/"//g'|sed 's/^.......//g'
		cntr=$((cntr+1))
		rescnt=$((rescnt+1))
	else
		cntr=$((cntr+1))
	fi
done


