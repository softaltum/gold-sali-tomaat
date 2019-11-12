# -/bin/bash

clear

str="	Hi There"
echo $str

str1=$(cat /proc/meminfo| grep -i memtotal|awk '{print $2}')
# printf " The Total Memory is "
x=$(awk "BEGIN {print $str1/1048756}")
echo " The Total Memory => " $x
# printf " %.1f"$x

str2=`cat /proc/meminfo | grep -i memavailable|awk '{print $2}'`
# printf " The Available Memory is "
y=$(awk "BEGIN {print $str2/1048756}")
echo " The Available Memory => " $y

printf "\n"
RESULT=$(awk "BEGIN {printf \"%.2f\",$y/$x*100}")
echo " Percentage Memory availability => " $RESULT
# z=$((y/x*100))
#echo $(( $y / $x ))

#echo $(( 100 * 1 / 3 ))

#echo $z
#printf " Percentage is => %.2f\n" $z
printf "\n"
