# 3. Write a Python program to find duplicate values from a list and display those.
# Define the list of numbers
numbers = [1, 2, 3, 2, 4, 5, 8, 5, 6]

# Initialize an empty list to store duplicates
duplicates = []

# Loop through the list and find duplicates
for i in numbers:
    if numbers.count(i) > 1 and i not in duplicates:
        duplicates.append(i)

# Print the duplicate values
print("Duplicate values:", duplicates)

'''OUTPUT:

Duplicate values: [2, 5]
'''
