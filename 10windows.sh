 # 10. Shell script to display the content of a directory file in windows style



if [ $# -ne 0 ]
then
	 echo "Syntax error"
	 echo "< $0 >"
	exit

fi
ter=`tty`
ls -l > lsl
exec < lsl
cd=0
while read line
do
	
 	cd=`expr $cd + 1`
 	if [ $cd -eq 1 ]
 	then
 		continue
 	fi
	
	i=`echo $line | cut -d " " -f 9`
	t=`date +%d/%m%y"  "%r -r $i`
	b=`echo $line | cut -d " " -f 5`
	if [ -d $i ]
	then
		echo  "$t\t<DIR>\t  $b\t   $i"	   
	else
	
		echo  "$t\t     \t  $b\t   $i"	
	fi
done
	
exec < $ter	 
rm lsl

<<comm
ksb@ksb-OptiPlex-3060:~/fathima/nw/script$ sh 10windows.sh
28/0522  12:23:24 PM IST	     	  506	   10windows.sh
28/0522  12:26:16 PM IST	     	  315	   11print.sh
28/0522  12:24:40 PM IST	     	  938	   9dellinux.sh
19/0522  12:49:47 PM IST	     	  938	   9.sh
19/0522  12:29:43 PM IST	     	  83	   a.sh
19/0522  12:47:53 PM IST	     	  218	   b
16/0522  03:15:55 PM IST	     	  8	   b.sh
26/0522  12:19:41 PM IST	     	  571	   comparefile.sh
26/0522  12:34:50 PM IST	     	  473	   count.sh
26/0522  01:06:17 PM IST	     	  242	   factorial.sh
19/0522  12:03:40 PM IST	     	  458	   lastfirst8.sh
19/0522  11:59:35 AM IST	     	  458	   lastfirst.sh
05/0522  01:00:23 PM IST	     	  624	   leap.sh
28/0522  12:30:20 PM IST	     	  0	   lsl
23/0522  02:54:47 PM IST	     	  968	   pg2.sh
23/0522  03:23:19 PM IST	     	  796	   pg3.sh
23/0522  03:34:12 PM IST	     	  473	   pg6.sh
16/0522  03:42:03 PM IST	     	  484	   pg7.sh
26/0522  11:30:00 AM IST	     	  1101	   rename.sh
26/0522  01:03:36 PM IST	     	  484	   timewish.sh
23/0522  03:20:44 PM IST	     	  127	   your.sh
comm 
