#8. Shell script to display a file from last line to first line
if [ $# -ne 1 ]
then
	echo "syntax error"
	echo " $0 filename"
	exit
fi

file=$1
ter=`tty`
exec < $file
a=0
while read line
do
a=`expr $a + 1`
done
exec < $ter

while [ $a -gt 0 ]
do
cat $file | head -$a | tail -1
a=`expr $a - 1`
done 

<<com
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh lastfirst.sh a.sh

z
y
x
vw
u
t
s
r
q
p
o
n
m
l
k
j
i
h
g
f
e
d
c
b
a
wxyz
rstuv
nopq
hijklm
abcdefg
com
