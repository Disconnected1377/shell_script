#!/bin/bash

echo "Enter three numbers:"
read num1
read num2
read num3

max=$num1

case "$num2" in
  "$num1" | "$num3")
    ;; # Do nothing, this just checks for exact match.
  *)
    if [ "$num2" -gt "$max" ]; then
      max=$num2
    fi
    ;;
esac

case "$num3" in
  "$num1" | "$num2")
    ;;
  *)
    if [ "$num3" -gt "$max" ]; then
      max=$num3
    fi
    ;;
esac

echo "The largest number is $max"
