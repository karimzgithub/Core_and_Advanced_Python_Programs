#1. Declare a div() function with two parameters. Then call the function and pass two numbers and display their division. 
#userdefined
# Declare the div function and assign a variable to store operation
def div(num1, num2):
    answer= num1/num2
# Return the division num1 and num2
    return answer

# Call the function and pass two numbers
result = div(90, 2)

# Display the result
print("The result of division is:", result)

'''OUTPUT:
The result of division is: 45.0
'''
