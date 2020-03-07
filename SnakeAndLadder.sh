#!/bin/bash -x
#Problem Statement : Snake and Ladder Game.
#Discription : This problem simulates a Snake and Ladder Game.
#Author : Kunal Jadhav
#Date : 7 March 2020

function random() {
	state=$((RANDOM%6+1))
	echo $state
}
startPosition=0
random
