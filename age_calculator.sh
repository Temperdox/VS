#!/bin/bash
# Bash Age Calculator
# Run with: bash age_calculator.sh

get_age_message() {
    local age=$1

    if [ $age -lt 30 ]; then
        echo "You are young!"
    elif [ $age -ge 30 ] && [ $age -lt 67 ]; then
        echo "You are middle-aged."
    elif [ $age -ge 67 ] && [ $age -le 80 ]; then
        echo "You are aging and should travel the world!"
    else
        echo "You should relax and enjoy your life!"
    fi
}

run_again="yes"

while [ "$run_again" = "yes" ] || [ "$run_again" = "y" ]; do
    # Get current year
    current_year=$(date +%Y)

    # Welcome message
    echo ""
    echo "========================================"
    echo "   Welcome to the Age Calculator!"
    echo "========================================"
    echo ""

    # Get user input
    read -p "Please enter your name: " name
    read -p "Please enter your year of birth: " birth_year

    # Calculate age
    age=$((current_year - birth_year))

    # Get appropriate message
    message=$(get_age_message $age)

    # Output results
    echo ""
    echo "----------------------------------------"
    echo "Hello, $name!"
    echo "You are $age years old."
    echo "$message"
    echo "----------------------------------------"
    echo ""

    # Ask to run again
    read -p "Would you like to run the program again? (yes/no): " run_again
done

echo ""
echo "Thank you for using the Age Calculator. Goodbye!"
