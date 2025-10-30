#!/bin/bash

sov=0
nesov=0

for a in $(ls $1)
do
    for b in $(cat $1$a)
    do
        age=$(echo $b | cut -d ":" -f2)
        if [["$age" -ge 18]]
        then
            sov=$((sov+1))
        else
            nesov=$((nesov+1))
        fi
    done
done
echo "Совершеннолетних - $sov"
echo "Несовершеннолетних - $nesov"
