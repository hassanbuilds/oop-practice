// ----------------------------Basic Level-------------------------------

// Q1: Create a class Book with fields title (String), author (String), isAvailable (bool, default true).
// - Add a method displayInfo() that prints "Title: <title>, Author: <author>, Available: <isAvailable>".
//
// Example:
// Book b = Book("Flutter Guide", "Hassan");
// b.displayInfo();
// Output: Title: Flutter Guide, Author: Hassan, Available: true

// ignore_for_file: unused_local_variable

class Book {
  String title;
  String author;
  bool isAvailable;

  Book(this.title, this.author, [this.isAvailable = true]);

  void displayInfo() {
    print('Title: $title, Author: $author, Available: $isAvailable');
  }
}

void main() {
  Book book1 = Book('Flutter Guide', 'Hassan'); // uses default true
  book1.displayInfo();

  Book book2 = Book('Dart in Action', 'Hassan', false);
  book2.displayInfo();
}

// Q2: Create a class User with fields name (String) and borrowedBooks (List<Book>).
// - Add a method borrowBook(Book book) that adds the book to borrowedBooks and sets book.isAvailable to false.
// - Add a method returnBook(Book book) that removes the book from borrowedBooks and sets book.isAvailable to true.
//
// Example:
// Book b = Book("Dart Basics", "Hassan");
// User u = User("Ali");
// u.borrowBook(b);
// print(b.isAvailable);
// Output: false

// Book classs
// Book class
class Books {
  String title;
  String author;
  bool isAvailable;

  Books(this.title, this.author, [this.isAvailable = true]);
}

// User class
class User {
  String name;
  List<Book> borrowedBooks;

  User(this.name) : borrowedBooks = [];

  // Borrow a book
  void borrowBook(Book book) {
    if (book.isAvailable) {
      borrowedBooks.add(book);
      book.isAvailable = false; // mark as borrowed
    } else {
      print('The book "${book.title}" is already borrowed');
    }
  }

  // Return a book
  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      borrowedBooks.remove(book);
      book.isAvailable = true; // mark as available
    } else {
      print('User "$name" did not borrow the book "${book.title}"');
    }
  }
}

void main2() {
  Book b = Book("Dart Basics", "Hassan");
  User u = User("Ali");

  u.borrowBook(b);
  print(b.isAvailable); // false

  u.returnBook(b);
  print(b.isAvailable); // true
}

// --------------------- INTERMEDIATE LEVEL -------------------------------

// Q3: Create a class Library with a field books (List<Book>).
// - Add a method addBook(Book book) to add a book to the library.
// - Add a method removeBook(String title) to remove a book by title.
// - Add a method searchByAuthor(String author) that returns a list of books by that author.
// - Add a method displayAvailableBooks() that prints only available books.
//
// Example:
// Library lib = Library();
// lib.addBook(Book("Dart Guide", "Hassan"));
// lib.displayAvailableBooks();

// Book class

class Book3 {
  String title;
  String author;
  bool isAvailable;

  Book3(this.title, this.author, [this.isAvailable = true]);
}

// Class Library
class Library {
  List<Book3> books;

  Library() : books = [];

  // Add a book to library
  void addBook(Book3 book) {
    books.add(book);
  }

  // Remove a book to author
  void removeBook(Book3 book) {
    books.remove(book);
  }

  // Search by author
  List<Book3> searchByAuthor(String author) {
    return books.where((book) => book.author == author).toList();
  }

  // Display an avaliable book

  void displayAvaliableBook() {
    for (var Book3 in books) {
      if (Book3.isAvailable) {
        print(
          'Title: ${Book3.title}, Author: ${Book3.author}, IsAvaliable ${Book3.isAvailable}',
        );
      }
    }
  }
}

void main3() {
  Library lib = Library();
  // ADD BOOKS

  lib.addBook(Book3("Dart Guide", "Hassan"));
  lib.addBook(Book3("Flutter Basics", "Ali"));
  lib.addBook(Book3("Advanced Dart", "Hassan", false));

  // Display available books
  lib.displayAvaliableBook();

  print("---- Search by Author: Hassan ----");
  var hassanBooks = lib.searchByAuthor("Hassan");
  for (var b in hassanBooks) {
    print(
      "Title: ${b.title}, Author: ${b.author}, Available: ${b.isAvailable}",
    );
  }

  print("---- Removing Flutter Basics ----");
  lib.removeBook("Flutter Basics" as Book3);
  lib.displayAvaliableBook();
}

   // OUTPUT 
/*Title: Dart Guide, Author: Hassan, Available: true
Title: Flutter Basics, Author: Ali, Available: true
---- Search by Author: Hassan ----
Title: Dart Guide, Author: Hassan, Available: true
Title: Advanced Dart, Author: Hassan, Available: false
---- Removing Flutter Basics ----
Title: Dart Guide, Author: Hassan, Available: true */


// Q4: Update User.borrowBook(Book book) to check if book.isAvailable is true before borrowing.
// - If not available, print "Book <title> is already borrowed."
//
// Example:
// Book b = Book("Flutter Basics", "Ali", false);
// User u = User("Sara");
// u.borrowBook(b);
// Output: Book Flutter Basics is already borrowed.

// ------------------------- ADVANCED LEVEL --------------------------------

// Q5: Create an abstract class LibraryItem with fields: title (String), id (int), isAvailable (bool, default true).
// - Add an abstract method displayInfo().
//
// Q6: Create classes Book and Magazine that inherit LibraryItem.
// - Book has an extra field author (String).
// - Magazine has an extra field issueNumber (int).
// - Implement displayInfo() in both classes.
//
// Example:
// Book b = Book(1, "Dart Mastery", "Hassan");
// b.displayInfo();
// Output: ID: 1, Title: Dart Mastery, Author: Hassan, Available: true

// Q7: Update Library to hold a List<LibraryItem> instead of List<Book>.
// - Add a method displayItemsByType(String type) that prints only Books or Magazines.
// - Add a method borrowItemById(int id) that sets isAvailable to false.
// - Add a method returnItemById(int id) that sets isAvailable to true.
// - Throw an exception if trying to borrow an unavailable item.
//
// Example:
// Library lib = Library();
// lib.addItem(Book(1, "Dart", "Hassan"));
// lib.borrowItemById(1);
// Output: Item borrowed successfully
