#2. Python Program to Find the Largest Among Three Numbers
#take input from user
#assigning three variables for three numbers
a = float(input("Enter the first number: "))
b = float(input("Enter the second number: "))
c = float(input("Enter the third number: "))

#if condition
if a >= b and a >= c:
    print("The Largest number is", a )
    
 #elif condition       
elif b >= a and b >= c:
    print("The Largest number is", b )
    
#else condition      
else:
    print("The Largest number is", c )
    
''' OUTPUT:
Enter the first number: 55
Enter the second number: 26
Enter the third number: 35
The Largest number is 55.0
'''
        
