#1. Write a Python program to Count all letters, digits, and special symbols from the given 

#Take input from user
string = input("Enter a String : ")

#Initialize the counter
alphabets=0
digits=0
specialChars=0

#checks for each character in the string
for char in string:
    
    if char.isalpha():   #if character of the string is an alphabet
        alphabets=alphabets+1
        
    elif char.isdigit():   #if character of the string is a digit
        digits=digits+1
		
    else:       #if character of the string is a special character
        specialChars=specialChars+1
        			
#print result    		        			
print("Chars =",alphabets,"Digits =",digits,"Symbol =",specialChars)


'''OUTPUT:
Enter a String : &jyr62$23Nas
Chars = 6 Digits = 4 Symbol = 2

Enter a String : P@#yn26at^&i5ve
Chars = 8 Digits = 3 Symbol = 4
'''

