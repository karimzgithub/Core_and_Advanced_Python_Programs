# 2. Write a Python program that prompts the user to input an integer and raises a ValueError exception if the input is not a valid integer

try:
    # Prompt user to input an integer
    user_input = int(input("Enter an integer: "))

    print("It's a valid integer")

except ValueError:
    # Raise ValueError if input is not a valid integer
    print("ValueError: That's not a valid integer!")

'''OUTPUT
Enter an integer: 1.6
ValueError: That's not a valid integer!

Enter an integer: 5
It's a valid integer

'''




