#2. Write a function in Python to count and display the total number of words in a text file “ABC.txt”

#define function 
def count_words_in_file():
    total_words = 0  #initialize count
    # Open the file in read mode
    with open('D:\\New folder\\abc.txt', 'r') as file:
        # Read each line from the file
        for line in file:
            # Split the line into words and count them
            words = line.split()
            total_words = total_words + len(words)
    
    # Display the total number of words
    print('Total number of words: ',total_words)

# Call the function
count_words_in_file()

'''OUTPUT:
Total number of words:  7
'''
