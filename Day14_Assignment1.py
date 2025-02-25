# 1. Write a Python program to handle a ZeroDivisionError exception when dividing a number by zero.

try:
    # Input two numbers
    numerator = float(input("Enter the numerator: "))
    denominator = float(input("Enter the denominator: "))

    # Attempt division
    result = numerator / denominator
    print("Result: ",result)

except ZeroDivisionError:
    # Handle the exception if denominator is zero
    print("ZeroDivisionError: You cannot divide by zero!")

'''OUTPUT:
Enter the numerator: 25
Enter the denominator: 0
ZeroDivisionError: You cannot divide by zero!

Enter the numerator: 25
Enter the denominator: 5
Result:  5.0

'''
