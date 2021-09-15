#! /bin/bash -x

user=$((RANDOM%3))
computer=$((RANDOM%3))

paper=0
rock=1
scissor=2

case "$user$computer" in

	01) winner="user" ;;
	10) winner="computer" ;;
	02) winner="computer" ;;
	20) winner="user" ;;
	12) winner="user" ;;
	21) winner="computer" ;;
	00) winner="tie" ;;
	11) winner="tie" ;;
	22) winner="tie" ;;
esac
echo winner=$winner
