# 13.Shell script to count the occurrence of words in a file in a set of files

if [ $# -eq 0 ]
then 
	echo "Syntax error"
	echo "$0 file1 file2 etc..."
	exit
	fi

k=$#
j=0
echo "Enter a word"
read word


ter=`tty`
while [ $k -gt 0 ]
do
fname=$1

exec < $fname
i=0
while read line
do
	for l in $line
	do
		echo $l | grep $word > grp
		if [ $? -eq 0 ]
		then
			i=`expr $i + 1`
		fi
	done
done

j=`expr $j + $i`
echo "Occurrences of word $word in $fname - $i"
shift
k=`expr $k - 1`
exec < $ter
done

echo "Total occurrences word $word - $j"
rm grp

<<comm
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh 13.sh 12.sh 11print.sh
Enter a word
echo
Occurrences of word echo in 12.sh - 3
Occurrences of word echo in 11print.sh - 4
Total occurrences word echo - 7
comm

