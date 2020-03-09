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

newPosition=0
prevPosition=0

function userChoice() {
	diceCounter=0
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
#			echo "position after die roll $newPosition"
			;;
			"3")
			prevPosition=$newPosition
			newPosition=$(($newPosition-$( random )))
			if [[ $newPosition -lt 0 ]]
				then
					newPosition=0
			fi
			((diceCounter++))
#			echo "position after die roll $newPosition"
			;;
		esac
	 done
	 echo $diceCounter
}

read -p "Enter Player1 name: " player1
read -p "Enter Player2 name: " player2
player1Rolls=$( userChoice )
player2Rolls=$( userChoice )
echo "$player1Rolls times $player1 rolls the dice"
echo "$player2Rolls times $player2 rolls the dice"
if [[ $player1Rolls < $player2Rolls ]]
 then
	echo "Winner is $player1"
 else
	echo "Winner is $player2"
fi
