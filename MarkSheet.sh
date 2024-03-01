#!/bin/bash

echo "Enter Marks for 3 Subjects:"
read sub1
read sub2
read sub3

total=$(($sub1+$sub2+$sub3))
percentage=$(bc <<< "scale=0; $total/3")

echo "Total Marks: $total"
echo "percentage: $percentage"

if [ $percentage -ge 60 ]; then
  echo "Class Obtained: First Class"
elif [ $percentage -ge 45 ]; then
  echo "Class Obtained: Second Class"
else
  echo "Class Obtained: Third Class"
fi
