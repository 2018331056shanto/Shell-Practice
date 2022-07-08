#comm is the command to compare two sorted file
#comm returns 3 colums 
#1 st column the file that are only in file1
#2nd column the file that are only in file1
#3rd column the file that are both in file1 file2
#comm -1 supress the column 1
#comm -2 supress the column 2
#comm -3 supress the column 3
#to show the all the files
comm file1.txt file2.txt
#just show the 1st colum that are not matched with file2
#supress column 2 and 3
comm file1.txt file2.txt -2 -3
#to see the 2nd and trd column 
comm file1.txt file2.txt -1


