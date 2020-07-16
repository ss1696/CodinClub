 read -p "Enter the no of feet to change in meter" feet1
 read -p "Enter the no of feet to change in meter" feet2

 meter1=$( bc -l <<<"0.3048*$feet1" )
 meter2=$( bc -l <<<"0.3048*$feet2" )
 
 area=$(( meter1*meter2 ))
 echo "Area of rectangular plot is" $area

 areaInAcres=$( echo 2 k $area 43560 / -p | dc )
 echo "Area of plot in Acres = " $areaInAcres

