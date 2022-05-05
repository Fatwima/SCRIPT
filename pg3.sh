#Shell script using command line to test whether given number is prime or not

if [ $# -ne 1 ]
then 
  echo "try sh $0 argument"
  exit 0
fi
if [ $1 -le 1 ]
then
  echo "        OUTPUT      "
  echo "Number  is NOT PRIME"
  exit 0
fi
n=$1
f=1
i=2
while [ $i -lt $n ]
do
  mod=`expr $n % $i`
  if [ $mod -eq 0 ]
  then
    f=0
    break
  fi
i=`expr $i + 1`
done
 echo "        OUTPUT      "

if [ $f -eq 0 ]
then 
   echo "Number  is NOT PRIME"

else

   echo "Number  is PRIME"

fi



<<comment
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh pg3.sh 0
        OUTPUT      
Number  is NOT PRIME
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh pg3.sh -1
        OUTPUT      
Number  is NOT PRIME
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh pg3.sh 1
        OUTPUT      
Number  is NOT PRIME
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh pg3.sh 2
        OUTPUT      
Number  is PRIME
comment
