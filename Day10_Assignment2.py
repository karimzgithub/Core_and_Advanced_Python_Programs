#2. Write a Python program to get the largest and smallest number from a list without built in functions.
# Define the list
numbers = [50, 3, 18, 5, 13]

# Initialize variables for largest and smallest number
largest = numbers[0]
smallest = numbers[0]

# Loop through the list to find the largest and smallest
for number in numbers:
    if number > largest:
        largest = number
    if number < smallest:
        smallest = number

# Print the results
print("Largest number:", largest)
print("Smallest number:", smallest)

'''OUTPUT:
Largest number: 50
Smallest number: 3
'''
