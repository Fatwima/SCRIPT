#Shell script to compare two files. If the files are identical delete one

echo "enter filename 1:"
read f1
echo "enter filename 2:"
read f2
cmp $f1 $f2
if [ $? -eq 0 ]
then
	rm $f2
	echo "second file removed"
	exit
fi
echo "files not identical"

<<com

ksb@ksb-OptiPlex-3060:~/fathima/nw/ss$ sh o.sh
enter filename 1:
1.sh
enter filename 2:
2.sh
cmp: EOF on 1.sh
files not identical
ksb@ksb-OptiPlex-3060:~/fathima/nw/ss$ sh o.sh
enter filename 1:
case1.sh
enter filename 2:
cc.sh
second file removed


com
