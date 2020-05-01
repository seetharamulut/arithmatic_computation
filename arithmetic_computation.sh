#! /bin/bash/ 
read -p "enter first number" num1
read -p "enter second number" num2
read -p " enter third number" num3
declare -A array=( [a]="0" [b]="0" [c]="0" [d]="0" )

array[a]=$(( $num1+$num2*$num3 ))
array[b]=$(( $num1*$num2+$num3 ))
array[c]=$(( $num3+$num1/$num2 ))
array[d]=$(( $num1%$num2+$num3 ))

result=( ${array[a]} ${array[b]} ${array[c]} ${array[d]} )

echo "computation result in descending order"
for number in ${result[@]}
do
 echo $number
done | sort -nr
echo "computation result in ascending order"
for number in ${result[@]}
do
 echo $number
done | sort -n

