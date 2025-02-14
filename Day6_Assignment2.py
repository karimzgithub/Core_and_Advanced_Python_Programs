#2. Write a python program to check whether a number is palindrome or not?

#take input from user
num = int(input("Enter a number: "))

org_num = num   #stores original number
rev_num = 0     # initialize with 0
while num > 0:  # reversing using while loop
    rem = num % 10      # Get the last digit of the number
    rev_num = rev_num * 10 + rem   # Add the digit to the reversed number
    num = num // 10     # Remove the last digit from the number

#check if the original number is equal to the reversed number
if org_num == rev_num:
    print("It is a palindrome")
else:
    print("It is not a palindrome")

'''OUTPUT:

Enter a number: 1234
It is not a palindrome


Enter a number: 121
It is a palindrome


'''
