#!/bin/bash
mkdir dir1 dir2 dir3
cd dir1
touch summary.txt
cd ../dir2
touch list.txt
cd ../dir3
mkdir dir4
cd dir4
touch list.txt
cd ../../..
find . -name "list.txt" -type f
echo "Всем студентам, привет!"
find . -name "summary.txt" -o -name "list.txt" -type f