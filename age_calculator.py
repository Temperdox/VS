# Python Age Calculator
# Run with: python age_calculator.py

from datetime import datetime

def get_age_message(age):
    if age < 30:
        return "You are young!"
    elif 30 <= age < 67:
        return "You are middle-aged."
    elif 67 <= age <= 80:
        return "You are aging and should travel the world!"
    else:
        return "You should relax and enjoy your life!"

def main():
    while True:
        # Get current year
        current_year = datetime.now().year

        # Welcome message
        print("\n========================================")
        print("   Welcome to the Age Calculator!")
        print("========================================\n")

        # Get user input
        name = input("Please enter your name: ")
        birth_year = int(input("Please enter your year of birth: "))

        # Calculate age
        age = current_year - birth_year

        # Get appropriate message
        message = get_age_message(age)

        # Output results
        print("\n----------------------------------------")
        print(f"Hello, {name}!")
        print(f"You are {age} years old.")
        print(message)
        print("----------------------------------------\n")

        # Ask to run again
        run_again = input("Would you like to run the program again? (yes/no): ").lower()
        if run_again not in ["yes", "y"]:
            break

    print("\nThank you for using the Age Calculator. Goodbye!")

if __name__ == "__main__":
    main()
