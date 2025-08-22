// ------------------------- Basic level -----------------------
// Q1: Create a class Person with a private field _name.
// - Add a setter to update the name.
// - Add a getter to access the name.
// - Print the name using the getter.
//
// Example:
// var p = Person();
// p.name = "Hassan";
// print(p.name);  // Output: Hassan

class Person {
  String? _name; // private field, nullable

  // Setter
  set name(String? newName) {
    _name = newName;
  }

  // Getter
  String? get name {
    return _name;
  }
}

void main() {
  var p = Person(); // no need to pass anything
  p.name = 'Hassan'; // setter
  print(p.name); // getter -> Hassan
}



// Q2: Create a class BankAccount with a private field _balance.
// - Initialize it to 0.
// - Add a method deposit(int amount).
// - Add a method getBalance() to return current balance.
//
// Example:
// var acc = BankAccount();
// acc.deposit(1000);
// print(acc.getBalance());  // Output: 1000




// Q3: Create a class Student with private fields _rollNo and _marks.
// - Add setters and getters.
// - Ensure that marks cannot be set below 0 or above 100.
//
// Example:
// var s = Student();
// s.rollNo = 101;
// s.marks = 85;
// print("${s.rollNo}, ${s.marks}");  // Output: 101, 85



//--------------------- Intermediate Level ---------------------

// Q4: Create a class Employee with private fields _id and _salary.
// - Add a constructor to set id and salary.
// - Add a getter for id (read-only).
// - Add a setter for salary that does not allow negative values.
//
// Example:
// var emp = Employee(1, 50000);
// emp.salary = 60000;
// print(emp.id);      // Output: 1
// print(emp.salary);  // Output: 60000






// Q5: Create a class Rectangle with private fields _length and _width.
// - Add a constructor to set values.
// - Add getters and setters.
// - Add a method area() that returns length * width.
// - Prevent negative values for length/width.
//
// Example:
// var r = Rectangle(10, 5);
// print(r.area());  // Output: 50






// Q6: Create a class LibraryBook with private fields _title and _isIssued.
// - Add methods issueBook() and returnBook().
// - Add a getter to check if the book is currently issued.
//
// Example:
// var book = LibraryBook("Flutter Basics");
// book.issueBook();
// print(book.isIssued); // Output: true




// -------------------------- Advanced Level --------------------------------

// Q7: Create a class Circle with a private field _radius.
// - Add a constant constructor.
// - Provide a getter for radius.
// - Create multiple const objects and check if they are identical.
//
// Example:
// const c1 = Circle(5);
// const c2 = Circle(5);
// print(identical(c1, c2));  // Output: true





// Q8: Create a class Bank with a private static field _totalBalance.
// - Add deposit(int amount) and withdraw(int amount) methods.
// - Ensure total balance never goes below 0.
// - Add a getter totalBalance to return the balance.
//
// Example:
// var bank = Bank();
// bank.deposit(2000);
// bank.withdraw(500);
// print(Bank.totalBalance);  // Output: 1500







// Q9: Create a class SecureFile with a private field _content.
// - Add a private method _encrypt(String data).
// - Add a method write(String data) that stores encrypted content.
// - Add a method read() that returns decrypted content.
// (Simulate encryption by reversing the string).
//
// Example:
// var file = SecureFile();
// file.write("hello");
// print(file.read());  // Output: hello