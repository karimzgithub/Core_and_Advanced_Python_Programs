#3. Write a python program finding the factorial of a given number using a while loop.

#take input from user
num = int(input("Enter a number: "))

fact = 1 #Initialize to 1

while num > 0: #while loop checks number is greater than 0
    fact = fact * num #Multiply by the current number
    num = num - 1     # decrease the number by 1

print("Factorial is: ",fact)

'''OUTPUT:
Enter a number: 6
Factorial is:  720

'''
