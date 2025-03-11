# Lab1:  Write a Python program to model a Library system. The program should include a class named Library with the following specifications: 
class Library:
    # Class attributes
    total_books = 0
    all_books = []

    def __init__(self, name):
        # Instance attributes
        self.name = name
        self.borrowed_books = []

    def borrow_book(self, book):
        # Check if the book is available
        if book in Library.all_books:
            # Add the book to the borrowed books list
            self.borrowed_books.append(book)
            # Remove the book from the library's collection
            Library.all_books.remove(book)
            # Decrease the total number of books
            Library.total_books -= 1
            print(f"{self.name} borrowed '{book}'.")
        else:
            print("Book not available.")

    def return_book(self, book):
        # Check if the member has the book borrowed
        if book in self.borrowed_books:
            # Add the book back to the library's collection
            Library.all_books.append(book)
            # Remove the book from the borrowed books list
            self.borrowed_books.remove(book)
            # Increase the total number of books
            Library.total_books += 1
            print(f"{self.name} returned '{book}'.")
        else:
            print(f"{self.name} doesn't have '{book}' to return.")

    @classmethod
    def view_library_books(cls):
        # Print the total number of books and available books
        print(f"Total books available in the library: {cls.total_books}")
        if cls.total_books > 0:
            print("Available books:")
            for book in cls.all_books:
                print(f"- {book}")
        else:
            print("No books available in the library.")


# Creating books and adding them to the library
Library.all_books = ["A Tale of Two Cities", "War and Peace", "Alice in Wonderland","Pride and Prejudice", "The Alchemist"]
Library.total_books = len(Library.all_books)

# Creating library members
member1 = Library("Karim")
member2 = Library("Atharva")

# View library books
Library.view_library_books()

# Borrow books
member1.borrow_book("War and Peace")
member2.borrow_book("A Tale of Two Cities")

# View library books after borrowing
Library.view_library_books()

# Return books
member1.return_book("War and Peace")
member2.return_book("A Tale of Two Cities")

# View library books after returning
Library.view_library_books()

'''OUTPUT:
Total books available in the library: 5
Available books:
- A Tale of Two Cities
- War and Peace
- Alice in Wonderland
- Pride and Prejudice
- The Alchemist
Karim borrowed 'War and Peace'.
Atharva borrowed 'A Tale of Two Cities'.
Total books available in the library: 3
Available books:
- Alice in Wonderland
- Pride and Prejudice
- The Alchemist
Karim returned 'War and Peace'.
Atharva returned 'A Tale of Two Cities'.
Total books available in the library: 5
Available books:
- Alice in Wonderland
- Pride and Prejudice
- The Alchemist
- War and Peace
- A Tale of Two Cities

'''
