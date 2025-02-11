#2. Declare two variables and print that which variable is largest using ternary operators
# Take user input

# Enter 1st number
a = float(input("Enter the first number: "))
# Enter 2nd number
b = float(input("Enter the second number: "))

# Using ternary operator to find and print the largest variable
largest = a if a > b else b
# Print Result
print("The largest value is:", largest)

'''OutPut:
Enter the first number: 11.5
Enter the second number: 3.9
The largest value is: 11.5
'''
