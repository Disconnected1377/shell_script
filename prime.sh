#!/bin/bash


is_prime() {
    local num=$1
    if [ $num -lt 2 ]; then
        return 1
    fi

    for ((i = 2; i * i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done

    return 0
}


echo -n "Enter the value of n: "
read n

echo "Prime numbers between 0 and $n:"
for ((num = 2; num <= n; num++)); do
    if is_prime $num; then
        echo -n "$num "
    fi
done
