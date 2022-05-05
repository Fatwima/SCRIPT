#Shell script to read 3 numbers and test whether they can be sides of a triangle 

if [ $# -ne 3 ]
then 
  echo "try sh $0 argument1 argument2 argument3"
  exit 0
fi

a=$1
b=$2
c=$3
l=0
x1=`expr $a + $b`
x2=`expr $a + $c`
x3=`expr $c + $b`
if [ $c -gt $x1 ]
then 
    l=1
    break
fi

if [ $b -gt $x2 ]
then
   l=1
   break
fi

if [ $a -gt $x3 ]
then 
  l=1
  break
fi
echo "                 OUTPUT                "

if [ $l -eq 1 ]
then
  echo "The sides $a $b $c you entered cant form a triangle"
else
  echo "The sides $a $b $c  you entered can form a triangle"
fi


<<comment

ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh pg2.sh 
try sh pg2.sh argument1 argument2 argument3
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh pg2.sh 2 2 2
                 OUTPUT                
The sides 2 2 2  you entered can form a triangle
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh pg2.sh 2 2 10
                 OUTPUT                
The sides 2 2 10 you entered cant form a triangle
comment

