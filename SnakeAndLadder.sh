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
	Operation=$( option )
	case $Operation in
		"1")
		newPosition=0
		;;
		"2")
		newPosition=$(($newPosition+$( random )))
		;;
		"3")
		newPosition=$(($newPosition-$( random )))
		;;
	esac
}

