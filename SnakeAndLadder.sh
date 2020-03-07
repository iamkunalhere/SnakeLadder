
#!/bin/bash -x
#Problem Statement : Snake and Ladder Game.
#Discription : This problem simulates a Snake and Ladder Game.
#Author : Kunal Jadhav
#Date : 7 March 2020

function random() {
	state=$((RANDOM%6+1))
	echo $state
}

function option() {
	optionState=$((RANDOM%3+1))
	echo $optionState
}

startPosition=0
newPosition=0

function userChoice() {
	while [[ $newPosition -lt 100 ]]
	 do
		Operation=$( option )
		case $Operation in
			"1")
			newPosition=$newPosition
			;;
			"2")
			newPosition=$(($newPosition+$( random )))
			;;
			"3")
			newPosition=$(($newPosition-$( random )))
			if [[ $newPosition -lt 0 ]]
				then
					newPosition=0
			fi
			;;
		esac
		echo $newPosition
	 done
}
userChoice
echo $newPosition
