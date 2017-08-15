#!/bin/bash
set -e
echo "welcome to the make directories script."
echo "making two directories"
mkdir Hello
mkdir World
ls
cd Hello
echo "making 5 text files and 5 python files"
touch {1..5}.txt
touch {1..5}.py
echo "current files are: "
ls
echo "Names of all txt files are:"
ls |grep .txt > txtfile_names; cat txtfile_names
echo "move all text files to the 'World' directory"
mv 1.txt 2.txt 3.txt 4.txt 5.txt ../World/
cd ../World/
echo "copy file 1.txt and save with a diffent name eg a.txt"
cp 1.txt a.txt
ls
echo "remove all files"
rm *.txt
ls
echo "move to original working directory and delete the created directories"
cd ..
ls
rm -r World Hello
echo "After directory removal: "
ls
exit 0
