#9. Shell script to delete all lines if a file containing word linux

if [ $# -ne 0 ]
then
	echo "syntax error"
	exit
fi

echo " enter the file name:"
read file

ter=`tty`
exec < $file

while read line
do
echo $line | grep linux > file2
	if [ $? -eq 0 ]
	then
		continue
	fi	
	echo $line >> file1
done

mv file1 $file
rm file2
exec < $ter

<<com
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ cat b



linux
it
or
not,
is everywhere
linux
Because the
linux
kernel falls under the GNU GPL, 
linux
sees extensive usage outside the PC arena.
You can catch it running automobiles, 
kitchen appliances, streaming devices,



ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh 9.sh
 enter the file name:b

ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ cat b



it
or
not,
is everywhere
Because the
kernel falls under the GNU GPL,
sees extensive usage outside the PC arena. 
You can catch it running automobiles, 
kitchen appliances, streaming devices,
com
