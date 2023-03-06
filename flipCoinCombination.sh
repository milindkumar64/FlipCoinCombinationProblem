isHead=1;
isTail=2;
headCount=0;
tailCount=0;
for ((i=1; i<=5; i++))
do
coinFace=$((1+RANDOM%2));

declare -A singlet
#singlet[1]="H"

case $coinFace in
	          $isHead)
 	          headCount=$(($headCount+1))
                  singlet[$i]="H"
                  echo "H " $i
	          ;;
	          $isTail)
	          tailCount=$(($tailCount+1))
                  singlet[$i]="T"
                  echo "T " $i
	          ;;
esac

done
	echo "Head won $headCount times"


	echo "Tail won $tailCount times"
        echo "All Singlet are :"${singlet[*]}

headPercentage=$(($headCount*100/5))
echo "headPercentage is :" $headPercentage

tailPercentage=$(($tailCount*100/5))
echo "tailPercemtage is :" $tailPercentage
