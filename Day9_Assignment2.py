#2. Write a Python program to remove duplicate characters of a given string. 
#Take input from user
s1 = input("Enter a string: ")
s2 = s1.split()  # Split the sentence into words
result = []  # List to store unique words

# Loop through words and add only unique ones to the result
for word in s2:
    if word not in result:  #If it is not
        result.append(word) #the word is appended to res

# Join the list back into a sentence
s3 = ' '.join(result)
print(s3)

'''OUTPUT:
Enter a string: string and string function
string and function
'''
