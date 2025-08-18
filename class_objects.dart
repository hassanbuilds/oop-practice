// -------------------- Basic Example --------------------------

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
// Add a method bark() that prints "<name> is barking 🐶".
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
//
// Example: Student("Hassan", 101, null).showDetails();




// ------------------ Intermediate Example 2 ------------------
// Q2: Create a class BankAccount with fields: accountHolder (String), balance (double).
// Add methods deposit(double amount) and withdraw(double amount).
// Withdraw should check if balance is sufficient, otherwise print "Insufficient balance".
//
// Example: 
// BankAccount("Ali", 1000).deposit(500);   // Balance = 1500
// BankAccount("Ali", 1500).withdraw(2000); // "Insufficient balance"



//----------------- Advanced Level-------------------------

// ------------------ Advanced Example 1 ------------------
// Q1: Create a class Car with fields: brand, model, year (nullable int).
// Add a method drive() that prints "<brand> <model> of year <year> is driving".
// If year is null, print "Year not specified".
//
// Example: Car("Tesla", "Model S", null).drive();






// ------------------ Advanced Example 2 ------------------
// Q2: Create a class User with fields: username (String), email (nullable String).
// Add a method showEmail() that prints the email if not null, 
// otherwise print "No email provided".
//
// Example: User("hassan123", null).showEmail();






// ------------------ Advanced Example 3 ------------------
// Q3: Create a class Product with fields: name (String), price (double?).
// Add a method showPrice() that prints "Price: <price>".
// If price is null, set it to a default value 100 and print that.
//
// Example: Product("Laptop", null).showPrice(); // "Price: 100"