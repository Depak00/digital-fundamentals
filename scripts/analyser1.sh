#!/bin/bash

for a in $(ls $1)
do
    for b in $(cat $1$a)
    do
        name=$(echo $b | cut -d ":" -f1)
        age=$(echo $b | cut -d ":" -f2)
        milo=$(echo $b | cut -d ":" -f3)
        echo "$name, $age лет, $milo"
    done
done
 
