#1.Write a python program to reverse a number using a while loop. 

#Take input from user
num = int(input("Enter a number: "))

#initializing number
rev = 0

#While loop continues as num>0
while num>0:

# gets remainder when divided by 10, gives last digit of number    
    rem = num % 10

# shifts one place to left by *10 and add last digit   
    rev =rev *10 + rem

#removes the last digit from num     
    num = num // 10

#prints resilt
print("reversed number= ", rev)

'''OUTPUT:
Enter a number: 234567
reversed number=  765432
'''



