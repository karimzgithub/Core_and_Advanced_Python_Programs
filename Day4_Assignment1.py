#1. Python program to check leap year  or not.

# Input year from user
year = int(input("Enter a year: "))

#A leap year is divisible by 4, but if it is also divisible by 100, it must also be divisible by 400 to be a leap year.
if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
    print("It is a leap year")
else:
    print("It is not a leap year")

''' OutPut:
Enter a year: 2024
It is a leap year

Enter a year: 2018
It is not a leap year
'''
