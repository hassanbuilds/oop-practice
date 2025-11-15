// ------------------ Basic Example 1 ------------------
// Q1: Create a class Person with fields: name and age.
// Add a method introduce() that prints "Hi, my name is <name> and I am <age> years old".

void main() {
  Person person = Person();
  person.name = 'Hassan';
  person.age = 20;
  person.introduce();
}

class Person {
  String? name;
  int? age;

  void introduce() {
    print('My name is $name and i am $age years old');
  }
}

// ------------------ Basic Example 2 ------------------
// Q2: Create a class Dog with fields: name and breed.
// Add a method bark() that prints "<name> is barking ".
//
// Example: Dog("Tommy", "Bulldog").bark();

void main2() {
  Dog dog = Dog('Tommy', 'pitbull');
  dog.bark();
}

class Dog {
  String? name;
  String? breed;
  Dog(this.name, this.breed);

  void bark() {
    print('My $name is barking');
  }
}

//------------------- Intermediate Level ---------------------------

// ------------------ Intermediate Example 1 ------------------
// Q1: Create a class Student with fields: name (String), rollNo (int), and grade (nullable String).
// Add a method showDetails() that prints student info.
// If grade is null, print "Grade not assigned yet".
// Example: Student("Hassan", 101, null).showDetails();

void main3() {
  Student student = Student('Hassan', 504, 'A');
  student.showDetails();
  Student student2 = Student('Zohan', 100, null);
  student2.showDetails();
}

class Student {
  String name;
  int rollNo;
  String? grade;

  Student(this.name, this.rollNo, this.grade);

  void showDetails() {
    print('Name $name');
    print('rollNo $rollNo');
    if (grade == null) {
      print('Grade not assign yet');
    } else {
      print('Grade $grade');
    }
    print('--------------------');
  }
}

// ------------------ Intermediate Example 2 ------------------

// Q2: Create a class BankAccount with fields: accountHolder (String), balance (double).
// Add methods deposit(double amount) and withdraw(double amount).
// Withdraw should check if balance is sufficient, otherwise print "Insufficient balance".

class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Amount deposited: $amount. New balance: $balance');
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('$amount withdrawn. Remaining balance: $balance');
    } else {
      print('Insufficient balance');
    }
  }
}

void main4() {
  BankAccount user1 = BankAccount('Hassan', 50000);
  user1.deposit(15530);
  user1.withdraw(20000);
  user1.withdraw(70000);

  BankAccount user2 = BankAccount('Zohan', 15000);
  user2.deposit(22021);
  user2.withdraw(10000);
}

//----------------- Advanced Level-------------------------

// ------------------ Advanced Example 1 ------------------
// Q1: Create a class Car with fields: brand, model, year (nullable int).
// Add a method drive() that prints "<brand> <model> of year <year> is driving".
// If year is null, print "Year not specified".
//
// Example: Car("Tesla", "Model S", null).drive();

class Car {
  String brand;
  String model;
  int? year; // nullable year

  Car(this.brand, this.model, this.year);

  void drive() {
    if (year != null) {
      print('$brand $model of year $year is driving');
    } else {
      print('$brand $model — Year not specified');
    }
  }
}

void main5() {
  Car car1 = Car('Mercedes', 'Mercedes-Benz CLS 63 AMG', null);
  car1.drive();

  Car car2 = Car('Mercedes', 'Mercedes-AMG G 63', 2023);
  car2.drive();
}

// ------------------ Advanced Example 2 ------------------
// Q2: Create a class User with fields: username (String), email (nullable String).
// Add a method showEmail() that prints the email if not null,
// otherwise print "No email provided".
//
// Example: User("hassan123", null).showEmail();

class User {
  String username;
  String? email;
  User(this.username, this.email);

  void showEmail() {
    if (email != null) {
      print('Email:$email');
    } else {
      print('No email provided');
    }
  }
}

void main6() {
  User user1 = User('Hassan', 'mhassan.codes@gmaiol.com');
  user1.showEmail();

  User user2 = User('Abdullah', null);
  user2.showEmail();
}

// ------------------ Advanced Example 3 ------------------
// Q3: Create a class Product with fields: name (String), price (double?).
// Add a method showPrice() that prints "Price: <price>".
// If price is null, set it to a default value 100 and print that.

class Product {
  String name;
  double? price;

  Product(this.name, this.price);

  void showPrice() {
    if (price == null) {
      price = 100;
    }
    print('The Price is $price');
  }
}

void main7() {
  Product product1 = Product('Macbook', 1200);
  product1.showPrice();

  Product product2 = Product('Thinkpad', null);
  product2.showPrice();
}
