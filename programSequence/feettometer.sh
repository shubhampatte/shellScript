#!/bin/bash -x

ft1=60
ft2=40

feet=$(($ft1*$ft2))

meter=$(echo $feet | awk '{print $ft / 3.281}')
echo Rectangular plot of 60 feet x 40 feet in meter: $meter m


