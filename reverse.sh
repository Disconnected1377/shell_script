#!/bin/bash
a=$(date +"%H")
if [ $a -ge 5 ] && [ $a -lt 12 ]; then
echo "good morning"
elif [ $a -ge 12 ] && [ $a -lt 17 ]; then
echo "Good afternoon"
elif [ $a -ge 17 ] && [ $a -lt 20 ]; then
echo "good evening"
else
echo "good night"
fi
