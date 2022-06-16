# ncr 
if [ $# -ne 0 ]
then
	echo "syntax error syntax is $0 "
	exit 1 
fi

fact()
	{
	n=$1
	i=1
	f=1

	while [ $i -le $n ]
	do
     	f=`expr $f \* $i`
	i=`expr $i + 1`
	done
	return $f
	}

echo "enter n: "
read p
fact $p
a=$?


echo "enter r: "
read r
fact $r
b=$?

if [ $p  -lt $r ]
then
   echo "please enter n ≥ r ≥ 0"
else
	c=`expr $p - $r` 
	fact $c
	d=$?

	t=`expr $b \* $d`

	res=`expr $a / $t`

	echo " $pC$r = $res"
fi
