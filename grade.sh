#!/bin/bash

echo "Enter Marks for 3 Subjects:"
read sub1
read sub2
read sub3

total=$(($sub1+$sub2+$sub3))
percentage=$(bc <<< "scale=0; $total/3")

echo "Total Marks: $total"
echo "percentage: $percentage"

if [ $percentage -ge 70 ]; then
  echo "grade: A"
elif [ $percentage -ge 45 ]; then
  echo "grade: B"
else
    echo "grade: C"
fi
