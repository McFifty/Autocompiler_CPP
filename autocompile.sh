#!/bin/bash
#creds to [mcfifty]
while getopts f: flag
do
    case "${flag}" in
        f) file_name=${OPTARG};;
    esac
done
#cd $file_name
g++ $file_name
./a.out | tee out.log
echo "Your output has been saved on out.log";
