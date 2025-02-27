#1. Write a function in python to read the content from a text file "ABC.txt" line by line and display the same on screen. 

#define user defined function
def read_file():
    # Open the file in read mode
    with open("D:\\New folder\\abc.txt", "r") as file:
        # Read and print each line
        for line in file:
            print(line.strip())  # strip() removes the newline character

# Call the function
read_file()

'''OUTPUT:

Hello Students. You are learning Core Python

'''
