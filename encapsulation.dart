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

import 'dart:ffi';

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

// Q2: Create a class BankAccount with a private field _balance.
// - Initialize it to 0.
// - Add a method deposit(int amount).
// - Add a method getBalance() to return current balance.

class BankAccount {
  double _balance = 0; // private field initialized to 0

  // deposit method
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // getter: returns current balance
  double get balance => _balance;

  // OR you can write a method instead of getter
  double getBalance() {
    return _balance;
  }
}

void main2() {
  var acc = BankAccount();
  acc.deposit(1000); // deposit some money
  print(acc.balance); // using getter
  print(acc.getBalance()); // using method
}

// Q3: Create a class Student with private fields _rollNo and _marks.
// - Add setters and getters.
// - Ensure that marks cannot be set below 0 or above 100.
//
// Example:
// var s = Student();
// s.rollNo = 101;
// s.marks = 85;
// print("${s.rollNo}, ${s.marks}");  // Output: 101, 85

class Student {
  int _rollNo = 0; // private field
  int _marks = 0; // private field

  // Setter for rollNo
  set rollNo(int value) {
    _rollNo = value;
  }

  // Getter for rollNo
  int get rollNo => _rollNo;

  // Setter for marks (with validation)
  set marks(int value) {
    if (value < 0) {
      _marks = 0;
    } else if (value > 100) {
      _marks = 100;
    } else {
      _marks = value;
    }
  }

  // Getter for marks
  int get marks => _marks;
}

void main3() {
  var s = Student();
  s.rollNo = 101; // using setter
  s.marks = 85; // using setter with validation
  print("${s.rollNo}, ${s.marks}"); // Output: 101, 85

  s.marks = 150; // invalid, will be capped to 100
  print("${s.rollNo}, ${s.marks}"); // Output: 101, 100
}

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

class Employee {
  int _id;
  double _salary;

  Employee(this._id, this._salary);

  // getter for id
  int get id => _id;

  // getter for the salary
  double get salary => _salary;

  // setter
  set salary(double value) {
    if (value > 0) {
      salary = _salary;
    } else {
      print('Salary cannot be negative or zero');
    }
  }

  void main4() {
    var emp = Employee(1, 50000);
    emp.salary = 60000; // updates salary
    print(emp.id); // Output: 1
    print(emp.salary); // Output: 60000

    emp.salary = -1000; // Will show error message
  }
}

// Q5: Create a class Rectangle with private fields _length and _width.
// - Add a constructor to set values.
// - Add getters and setters.
// - Add a method area() that returns length * width.
// - Prevent negative values for length/width.
//
// Example:
// var r = Rectangle(10, 5);
// print(r.area());  // Output: 50

class Rectangle {
  double _length;
  double _width;

  // constructor
  Rectangle(this._length, this._width);

  // getter for length
  double get length => _length;

  // getter for width
  double get width => _width;

  // setter for length
  set length(double value) {
    if (value > 0) {
      _length = value;
    } else {
      print("Length cannot be negative or zero");
    }
  }

  // setter for width
  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print("Width cannot be negative or zero");
    }
  }

  // method to calculate area
  double area() {
    return _length * _width;
  }
}

void main5() {
  var r = Rectangle(10, 5);
  print(r.area()); // Output: 50

  r.length = 15; // updating length using setter
  r.width = 7; // updating width using setter
  print(r.area()); // Output: 105

  r.length = -4; // shows error message
}

// Q6: Create a class LibraryBook with private fields _title and _isIssued.
// - Add methods issueBook() and returnBook().
// - Add a getter to check if the book is currently issued.
//
// Example:
// var book = LibraryBook("Flutter Basics");
// book.issueBook();
// print(book.isIssued); // Output: true

class LibraryBook {
  String _title;
  bool _isIssued = false; // default: not issued

  // constructor
  LibraryBook(this._title);

  // method to issue book
  void issueBook() {
    if (_isIssued) {
      print("Book '$_title' is already issued.");
    } else {
      _isIssued = true;
      print("Book '$_title' has been issued.");
    }
  }

  // method to return book
  void returnBook() {
    if (!_isIssued) {
      print("Book '$_title' was not issued.");
    } else {
      _isIssued = false;
      print("Book '$_title' has been returned.");
    }
  }

  // getter to check if book is issued
  bool get isIssued => _isIssued;
}

void main6() {
  var book = LibraryBook("Flutter Basics");

  book.issueBook(); // Book 'Flutter Basics' has been issued.
  print(book.isIssued); // Output: true

  book.returnBook(); // Book 'Flutter Basics' has been returned.
  print(book.isIssued); // Output: false

  book.returnBook(); // Trying to return again → shows warning
}

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

class Circle {
  final double _radius; // must be final for const constructor

  // constant constructor
  const Circle(this._radius);

  // getter for radius
  double get radius => _radius;
}

void main7() {
  const c1 = Circle(5);
  const c2 = Circle(5);
  const c3 = Circle(10);

  print(c1.radius); // Output: 5
  print(c2.radius); // Output: 5
  print(c3.radius); // Output: 10

  print(identical(c1, c2)); // true (same const object)
  print(identical(c1, c3)); // false (different radius)
}

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

class Bank {
  // private static field
  static int _totalBalance = 0;

  // deposit method
  void deposit(int amount) {
    if (amount > 0) {
      _totalBalance += amount;
      print("Deposited: $amount");
    } else {
      print("Deposit amount must be positive");
    }
  }

  // withdraw method
  void withdraw(int amount) {
    if (amount > 0 && _totalBalance >= amount) {
      _totalBalance -= amount;
      print("Withdrew: $amount");
    } else {
      print("Insufficient balance or invalid amount");
    }
  }

  // getter for total balance
  static int get totalBalance => _totalBalance;
}

void main8() {
  var bank1 = Bank();
  var bank2 = Bank();

  bank1.deposit(2000);
  bank2.withdraw(500);

  print(Bank.totalBalance); // Output: 1500
}
