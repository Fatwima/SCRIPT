#Shell script to rename all ordinary files in a directory with filename.PID of shell


if [ $# -ne 0 ]
then
	echo "Syntax is <$0>"
   	exit 1
fi
for i in *
do
 	if [ -f $i ]
  	then
   		newname="$i.$$"
   		mv $i $newname
  	fi
done


<<com
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ ls -l
total 28
-rw-rw-r-- 1 ksb ksb   9 May 16 15:14 a.sh
-rw-rw-r-- 1 ksb ksb   8 May 16 15:15 b.sh
-rw-rw-r-- 1 ksb ksb 508 May 16 15:24 comparefile.sh
-rw-rw-r-- 1 ksb ksb 624 May  5 13:00 leap.sh
-rw-rw-r-- 1 ksb ksb 987 May  5 13:02 pg2.sh
-rw-rw-r-- 1 ksb ksb 889 May  5 13:08 pg3.sh
-rw-rw-r-- 1 ksb ksb 237 May 16 15:31 rename.sh
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh rename.sh
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ ls -l
total 28
-rw-rw-r-- 1 ksb ksb   9 May 16 15:14 a.sh.6352
-rw-rw-r-- 1 ksb ksb   8 May 16 15:15 b.sh.6352
-rw-rw-r-- 1 ksb ksb 508 May 16 15:24 comparefile.sh.6352
-rw-rw-r-- 1 ksb ksb 624 May  5 13:00 leap.sh.6352
-rw-rw-r-- 1 ksb ksb 987 May  5 13:02 pg2.sh.6352
-rw-rw-r-- 1 ksb ksb 889 May  5 13:08 pg3.sh.6352
-rw-rw-r-- 1 ksb ksb 237 May 16 15:31 rename.sh.6352
com
