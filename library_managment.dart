// ----------------------------Basic Level-------------------------------

// Q1: Create a class Book with fields title (String), author (String), isAvailable (bool, default true).
// - Add a method displayInfo() that prints "Title: <title>, Author: <author>, Available: <isAvailable>".
//
// Example:
// Book b = Book("Flutter Guide", "Hassan");
// b.displayInfo();
// Output: Title: Flutter Guide, Author: Hassan, Available: true

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
// Output: Title: Dart Guide, Author: Hassan, Available: true

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
