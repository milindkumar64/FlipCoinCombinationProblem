isHeadHead=1;
isHeadTail=2;
isTailHead=3;
isTailTail=4;
headHeadCount=0;
headTailCount=0;
tailHeadCount=0;
tailTailCount=0

for ((i=1; i<=10; i++))
do
coinFace=$((1+RANDOM%4));

declare -A singlet

case $coinFace in
	          $isHeadHead)
 	          headHeadCount=$(($headHeadCount+1))
                  singlet[$i]="HH"
                  echo "HH " $i
	          ;;
	          $isHeadTail)
	          headTailCount=$(($headTailCount+1))
                  singlet[$i]="HT"
                  echo "HT " $i
	          ;;
                  $isTailHead)
                  tailHeadCount=$(($tailHeadCount+1))
                  singlet[$i]="TT"
                  echo "TH " $i
                  ;;
                  $isTailTail)
                  tailTailCount=$(($tailTailCount+1))
                  singlet[$i]="TT"
                  echo "TT " $i
                  ;;

esac

done
	echo "HH won $headHeadCount times"
        echo "TH won $tailHeadCount times"
        echo "HT won $headTailCount times"
        echo "TT won $tailTailCount times"

        echo "All Singlet are :"${singlet[*]}
        echo "All Singlet orders are :"${!singlet[*]}

hHPercentage=$(($headHeadCount*100/10))
echo "hHPercentage is :"$hHPercentage

hTPercentage=$(($headTailCount*100/10))
echo "hTPercentage is :"$hTPercentage

tHPercentage=$(($tailHeadCount*100/10))
echo "tHPercentage is :"$tHPercentage

tTPercentage=$(($tailTailCount*100/10))
echo "tTPercentage is :"$tTPercentage

