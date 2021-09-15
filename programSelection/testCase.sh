#! /bin/bash -x

read  -p "1. Add 2. Sub 3. Mul:" choice

a=10
b=6

# case expr in pattern1) act;; pattern2)act;; esac

case $choice in 
	1) echo add=$((a+b)) ;;
	2) echo sub=$((a-b)) ;;
	3) echo mul=$((a*b)) ;;
	4) echo "pls choose an correct option" ;;
esac
