#Anna Teng 10061146
#Henry Wang 10199252
#Katherine Le 10188031
#Marshall Ruse 10066247
#!/bin/bash

read -p "Input password: " -s pass

passScore=0

##Condition 1
if (( ${#pass} >= 8 )); then
        passScore=$((passScore + 1))
fi

##Condition 2
for ((n=0; n<${#pass}; n++ )); do
        if [[ ${pass:$n:1} == [0-9] ]]; then
                passScore=$((passScore + 1))
                break
        fi
done

##Condition 3
for ((n=0; n<${#pass}; n++ )); do
        if [[ ${pass:$n:1} == ['@''#''$''%''&''*''+''-''='] ]]; then
                passScore=$((passScore + 1))
                break
        fi
done

echo ""
echo -n "Password strength: "   

if [[ $passScore == 0 ]]; then
        echo "Terrible";
elif [[ $passScore == 1 ]]; then
        echo "Weak";
elif [[ $passScore == 2 ]]; then
        echo "Moderate";
else
        echo "Strong";
fi
