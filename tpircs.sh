#!/bin/bash

wordArr=()

read -p "Insert a list of words: " -a wordArr

for word in ${wordArr[*]}; do
        for ((n=0; n<${#word}; n++)); do
                negate=$((-1 * (($n+1)) ))
                echo -n ${word:$negate:1}
        done
        echo -n " "
done
echo ""
