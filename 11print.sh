#Shell script to print specified range of lines from given files

if [ $# -eq 0 ]
then 
	echo "syntax error"
	echo "syntax is $0 filename1 filename2 etc.."
	exit 1
fi

c=$#
echo "enter lower limit:"

read l
echo "enter upper limit:"
read u


while [ $c -gt 0 ]
do 
file=$1
echo "\nFile : $1 \nlines $l to $u"

cat $file | head -$u | tail -n +$l
c=`expr $c - 1`
shift
done
exit 0


<<comm
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh 11print.sh 12.sh 13.sh
enter lower limit:
4
enter upper limit:
6

File : 12.sh 
lines 4 to 6

if [ `expr $# % 2` -ne 0 -o $# -eq 0 ]
then

File : 13.sh 
lines 4 to 6
if [ $# -eq 0 ]
then 
	echo "Syntax error"
comm
