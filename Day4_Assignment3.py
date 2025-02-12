#3. Python Program to Check if a Number is Positive, Negative or zero
#take input from user
num = float(input("Enter a number: "))

#if number is greater than zero, print positive
if num > 0:
    print("Positive Number")
#if number is less than zero, print negative
elif num < 0:
    print("Negative Number")
#else number is zero
else:
    print("Zero")

'''OutPut:
Enter a number: 5
Positive Number

Enter a number: -3
Negative Number

Enter a number: 0
Zero
'''

