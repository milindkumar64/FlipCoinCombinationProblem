isHead=1;
isTail=2;

coinFlip=$((1+RANDOM%2));

if [ $isHead -eq $coinFlip ]
then
   echo "Head"
else
   echo "Tail"
fi
