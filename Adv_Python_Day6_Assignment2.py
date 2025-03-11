#Lab2:  Movie Library Create a class MovieLibrary that manages a collection of movies: 
class MovieLibrary:
    # Class attribute: A list of all available movies in the library
    available_movies = []

    def __init__(self, member_name):
        # Instance attributes
        self.member_name = member_name
        self.borrowed_movies = []

    def borrow_movie(self, movie):
        # Check if the movie is available in the library
        if movie in MovieLibrary.available_movies:
            # Borrow the movie (add to member's borrowed list)
            self.borrowed_movies.append(movie)
            # Remove the movie from the library's collection
            MovieLibrary.available_movies.remove(movie)
            print(f"{self.member_name} borrowed '{movie}'.")
        else:
            print(f"'{movie}' is not available in the library.")

    def return_movie(self, movie):
        # Check if the member has the movie borrowed
        if movie in self.borrowed_movies:
            # Return the movie (add back to the library's collection)
            MovieLibrary.available_movies.append(movie)
            # Remove the movie from the member's borrowed list
            self.borrowed_movies.remove(movie)
            print(f"{self.member_name} returned '{movie}'.")
        else:
            print(f"{self.member_name} didn't borrow '{movie}'.")

    def view_borrowed_movies(self):
        # Print the list of movies borrowed by the member
        if self.borrowed_movies:
            print(f"{self.member_name} has borrowed the following movies:")
            for movie in self.borrowed_movies:
                print(f"- {movie}")
        else:
            print(f"{self.member_name} hasn't borrowed any movies.")


# Creating movies and adding them to the library's available movies
MovieLibrary.available_movies = ["Inception", "The Matrix", "The Dark Knight", "Interstellar", "Avatar"]

# Creating library members
member1 = MovieLibrary("Alice")
member2 = MovieLibrary("Bob")

# View available movies in the library
print("Available movies in the library:")
for movie in MovieLibrary.available_movies:
    print(f"- {movie}")
print()

# Borrowing movies
member1.borrow_movie("Inception")
member2.borrow_movie("The Matrix")

# View borrowed movies for each member
member1.view_borrowed_movies()
member2.view_borrowed_movies()
print()

# Return movies
member1.return_movie("Inception")
member2.return_movie("The Matrix")

# View borrowed movies for each member after returning
member1.view_borrowed_movies()
member2.view_borrowed_movies()

# View available movies in the library after returning
print("\nAvailable movies in the library after returning:")
for movie in MovieLibrary.available_movies:
    print(f"- {movie}")

'''OUTPUT:
Available movies in the library:
- Inception
- The Matrix
- The Dark Knight
- Interstellar
- Avatar

Alice borrowed 'Inception'.
Bob borrowed 'The Matrix'.
Alice has borrowed the following movies:
- Inception
Bob has borrowed the following movies:
- The Matrix

Alice returned 'Inception'.
Bob returned 'The Matrix'.
Alice hasn't borrowed any movies.
Bob hasn't borrowed any movies.

Available movies in the library after returning:
- The Dark Knight
- Interstellar
- Avatar
- Inception
- The Matrix
'''

    
