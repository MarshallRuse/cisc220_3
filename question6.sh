#Anna Teng 10061146
#Henry Wang 10199252
#Katherine Le 10188031
#Marshall Ruse 10066247
#!/bin/bash


students=($(cat student.txt))
declare -A numName

for i in $(seq 2 2 $((${#students[*]}-1)) ); do
	numName[${students[$i]}]=${students[$(($i+1))]}
done

classes=($(cat course.txt))
declare -A idClass

for j in $(seq 2 2 $((${#classes[*]}-1)) ); do
	idClass[${classes[$j]}]=${classes[$(($j+1))]}
done

mixed=($(cat student_course.txt))
declare -a results

echo "Output"
echo -ne "studentName\tcourseName"

for k in $(seq 2 2 $((${#mixed[*]}-1)) ); do
	studentID=${mixed[$k]}
	courseID=${mixed[$(($k+1))]}
	results+=("\n${numName[$studentID]}\t${idClass[$courseID]}")
done

echo -e "${results[*]}" | sort -k1,1 -k2,2
