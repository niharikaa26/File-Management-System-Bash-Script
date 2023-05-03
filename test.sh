#!/bin/bash
i="0"
while [ $i -lt 100 ]
do
 gcc project.c -o proj
 ./proj
read opt1
if [ $opt1 == 1 ]
then
 echo "OK So you want to see list of all files and directories....."
 echo "here we gooooo...."
 sleep 3
 echo "Loading...."
 sleep 3
 echo "HERE......................."
 ls
 echo " "
elif [ $opt1 == 2 ]
then
 echo "OK So you want to create New Files...."
 echo "The types of file we can create:"
 echo "1- .c"
 echo "2- .txt" 
 echo "kindly specify by pressing 1-2.." 
read filechoice
 if [ $filechoice == 1 ]
 then
 echo "Name of file:"
 read filename
 touch $filename.c
 echo "HERE......................."
 echo "File Created Successfully"
 echo " "
 elif [ $filechoice == 2 ]
 then
 echo "Name of file:"
 read filename3
 touch $filename3.txt
 echo "HERE......................."
 echo "File Created Successfully"
 echo " "
 else
 echo "Invalid Input..Try Again."
 echo " "
 fi
elif [ $opt1 == 3 ]
then
 echo "Delete existing files here.. "
 echo "Kindly enter name of File you want to Delete!"
 echo "Note: Please Enter full Name with Extension."
 read delfile
 echo "HERE......................."
 if [ -f "$delfile" ];
 then
 if [ -f "$delfile" ];
 then
 rm $delfile
 echo "Successfully Deleted." 
echo " "
 else 
echo "Invalid..Try again" 
echo " " 
fi
fi
elif [ $opt1 == 4 ]
then
echo "OK So you want to see the detail of file"
echo "Enter File Name (with Extension) : "
read detail
echo "HERE......................."
echo "Checking.."
sleep 4
if [ -f "$detail" ];
then
echo "Loading Properties.."
stat $detail
else
echo "$detail File does not exist..Try again"
fi
echo " "
elif [ $opt1 ==  5]
then
echo "OK So you want to view content of file"
echo "Enter File Name : "
read readfile
echo "HERE......................."
if [ -f "$readfile" ];
then
echo "Showing file content.."
sleep 3
cat $readfile
else
echo "$readfile does not exist"
fi
echo " "
elif [ $opt1 == 6 ]
then
 echo "OK So you want to edit file content"
 echo "Enter File Name (with Extension) : "
 read edit
 echo "HERE......................."
 echo "Checking for file.."
 sleep 3
 if [ -f "$edit" ];
 then
 echo "Opening file.."
 sleep 3
 nano $edit
 echo " "
 else
 echo "$edit File does not exist..Try again."
 fi
elif [ $opt1 == 7 ]
then
 echo "HERE......................."
 echo "Rename files here.."
 echo "Enter Old Name of File (with Extension)"
 read old
 echo "Checking for file..."
 sleep 3
 if [ -f "$old" ];
 then
 echo "Ok File Exist."
 echo "Now Enter New Name for file (with Extension)"
 read new
 mv $old $new
 echo "Successfully Rename."
 echo "Now Your File Exist with $new Name"
 else
 echo "$old does not exist..Try again with correct filename."
 fi
echo " "
elif [ $opt1 == 8 ]
then 
echo "Search files here.." 
echo "Enter File Name with Extension to search" 
read f
 echo "HERE......................."
 if [ -f "$f" ];
 then
 echo "Searching for $f File"
 echo "File Found."
 echo " "
 else
 echo "File Does not Exist..Try again."
 echo " "
 fi
elif [ $opt1 == 9 ]
then
echo "OK So you want to sort files content"
echo "Enter File Name (with Extension) :"
read sortfile
echo "HERE......................."
if [ -f "$sortfile" ];
then
echo "Sorting File Content.."
sleep 3
sort $sortfile
else
echo "$sortfile File does not exist..Try again."
fi
echo " "
elif [ $opt1 == 10 ]
then
echo "HERE......................."
echo "counting number of files "
echo "Loading.."
sleep 3
find . -type f | wc -l
echo " "
elif [ $opt1 == 11 ]
then
echo "HERE......................."
echo "counting number of directories "
echo "Loading.."
sleep 3
find . -type d | wc -l
echo " "
else
echo "Invalid Input..Try again"
echo " "
fi
i=$[$i+1]
done
echo "End of Script."