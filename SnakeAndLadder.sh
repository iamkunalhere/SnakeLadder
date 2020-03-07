
#!/bin/bash -x
#Problem Statement : Snake and Ladder Game.
#Discription : This problem simulates a Snake and Ladder Game.
#Author : Kunal Jadhav
#Date : 7 March 2020


function random() {
	((diceCounter++))
	state=$((RANDOM%6+1))
	echo $state
}

function option() {
	optionState=$((RANDOM%3+1))
	echo $optionState
}
diceCounter=0
startPosition=0
newPosition=0
prevPosition=0
function userChoice() {
	while [[ $newPosition -lt 100 ]]
	 do
		Operation=$( option )
		case $Operation in
			"1")
			prevPosition=$newPosition
			newPosition=$newPosition
			;;
			"2")
			prevPosition=$newPosition
			newPosition=$(($newPosition+$( random )))
			if [[ $newPosition -gt 100 ]]
				then
					newPosition=$prevPosition
			fi
			((diceCounter++))
			echo "position after die roll $newPosition"
			;;
			"3")
			prevPosition=$newPosition
			newPosition=$(($newPosition-$( random )))
			if [[ $newPosition -lt 0 ]]
				then
					newPosition=0
			fi
			((diceCounter++))
			echo "position after die roll $newPosition"
			;;
		esac
		done
}
userChoice
echo "$diceCounter Times the dice was rolled"
