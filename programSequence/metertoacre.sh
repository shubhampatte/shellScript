#!/bin/bash -x

ft1=60
ft2=40

ft=$(($ft1*$ft2))

meter=$(echo $ft | awk '{print $ft / 3.281}')
echo Rectangular plot of 60 feet x 40 feet in meter: $meter m

plots=25

mt=$(echo $meter | awk '{print $meter * 25}')

echo " Area of 25 such plots in meter :" $mt

acres=$(echo $mt | awk  '{print $mt * 0.000247}')

echo " Area of 25 plots in acres :" $acres acre

