#!/bin/bash

calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo $interest
}

# Example usage:
read -p "Enter the principal amount: " principal_amount
read -p "Enter the interest rate: " interest_rate
read -p "Enter the investment time in years: " investment_time

result=$(calculate_simple_interest $principal_amount $interest_rate $investment_time)
echo "The simple interest is: $result"
