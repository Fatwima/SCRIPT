
  
# 12.Shell script to copy a set of files given as pairs at command prompt

if [ `expr $# % 2` -ne 0 -o $# -eq 0 ]
then
	echo "syntax error"
	echo "$0 source file destination file etc..."
	echo "Arguments must be even number"
	exit 1
fi

i=`expr $# / 2`

while [ $i -gt 0 ]
do

cp $1 $2


shift
shift
i=`expr $i - 1`
done
exit 0

<<comm
ksb@ksb-OptiPlex-3060:~/fathima/nw/ss$ cat abc
hello
hei
loo
lol
eeyy
hey
hooi
oi
hai
hi
oy

ksb@ksb-OptiPlex-3060:~/fathima/nw/ss$ sh 12.sh abc newfile
ksb@ksb-OptiPlex-3060:~/fathima/nw/ss$ cat newfile
hello
hei
loo
lol
eeyy
hey
hooi
oi
hai
hi
oy

comm
