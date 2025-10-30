#!/bin/bash

max=0
min=1000

for a in $(ls $1)
do
    for b in $(cat $1$a)
    do
        age=$(echo $b | cut -d ":" -f2)
        if [[$age -gt $max]]
        then
            max=$age
        fi
        if [[$age -lt $min]]
        then
            min=$age
        fi
    done
done
echo "Максимальный возраст - $max"
echo "Минимальный возраст - $min"
