#!/bin/bash

isLucky () {
 
n=$1
sum=0
sd=0
while [ $n -gt 0 ]
do
    sd=$(($n % 10))
    sum=$(($sum + $sd))
    n=$(($n / 10))
done

if (( ${#sum} == 1 )); then
        if (( $sum == 7 )); then
                echo "True";
        else
                echo "False";
        fi
else
        isLucky $sum;
fi
                
}

echo "Lucky Numbers are: "

for (( n=1000; n<=10000; n++ )); do
        result=$(isLucky $n)
        if [[ $result == "True" ]]; then
                echo $n
        fi
done
