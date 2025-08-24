//---------------------------- Basic Level--------------------------------

//Q1: Simple Inheritance

// Create a base class Animal with a method sound().
// Create a derived class Dog that overrides sound().
// Create another derived class Cat that overrides sound().
// Show how each makes its own sound.

class Animal {
  void sound() {
    print('Animal makes sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog barks: woof woof!');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat meows: meow meow!');
  }
}

void main() {
  var animal = Animal();
  animal.sound(); // Output: Animal makes a sound

  var dog = Dog();
  dog.sound(); // output Dog barks: woff woff!

  var cat = Cat();
  cat.sound(); // Output cat meows: meow meow!
}

//Q2: Inheriting Properties

// Create a base class Person with fields name and age.
// Create a class Student that extends Person and adds a field grade.
// Add a method introduce() that prints: "Hi, I am [name], age [age], in grade [grade]".

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Student extends Person {
  String grade;

  Student(String name, int age, this.grade) : super(name, age);
}

void main2() {
  var student = Student('Hassan', 20, 'A+');
  print('${student.name},${student.age}, ${student.grade} ');
}

// ------------------------- Intermediate Level-----------------------------------

//Q3: Multi-level Inheritance

// Create a class Shape with a method area().
// Create a class Rectangle that extends Shape with length and width fields.
// Create a class Square that extends Rectangle (where length == width).
// Demonstrate how Square inherits from Rectangle and Shape.

class Shape {
  void area() {
    print('Area method');
  }
}

class Recatangle extends Shape {
  double length;
  double width;
  Recatangle(this.length, this.width);
  @override
  void area() {
    double result = length * width;
    print("Area of Rectangle = $result");
  }
}

class Square extends Recatangle {
  Square(double sized) : super(sized, sized);
  @override
  void area() {
    double result = length * width; // same because both are equal
    print("Area of Square = $result");
  }
}

void main3() {
  var rectangle = Recatangle(10, 5);
  rectangle.area(); // Output: Area of Rectangle = 50

  var square = Square(6);
  square.area(); // Output: Area of Square = 36
}

//Q4: Using super keyword

// Create a class Vehicle with a constructor that sets brand.
// Create a class Car that extends Vehicle and also takes model in its constructor.
// Use 'super' to initialize brand from Vehicle.
// Print: "Brand: [brand], Model: [model]".

class Vechile {
  String brand;

  // Constructor with default value option
  Vechile(this.brand);
}

class Car extends Vechile {
  String model;
  // constructor with super keyword
  Car(String brand, this.model) : super(brand);

  void display() {
    print('Brand: $brand , Model: $model');
  }
}

void main4() {
  var car1 = Car('Mercedes-Benz', 'CLS 63 AMG');
  car1.display(); // output Brand: Mercedes-Benz , Model: CLS 63 AMG

  var car2 = Car('Mercedes-Benz', 'Maybach S-Class');
  car2.display(); // output Brand: Mercedes-Benz , Model: Maybach S-Class
}

//Q5: Method Overriding with Polymorphism

// Create a base class Account with a method withdraw(amount).
// Create two derived classes: SavingsAccount and CurrentAccount.
// In SavingsAccount, disallow withdraw if balance < 1000.
// In CurrentAccount, allow withdraw without restriction.
// Demonstrate polymorphism by using an Account reference to point to both.

class Account {
  double balance;

  Account(this.balance);

  void withdraw(double amount) {
    // Base method (will be overridden)
    print("Withdraw method in Account");
  }
}

class SavingsAccount extends Account {
  SavingsAccount(double balance) : super(balance);

  @override
  void withdraw(double amount) {
    if (balance - amount < 1000) {
      print("Transaction cannot be processed: Balance cannot go below 1000");
    } else {
      balance -= amount;
      print("Withdrawn: $amount, New Balance: $balance");
    }
  }
}

class CurrentAccount extends Account {
  CurrentAccount(double balance) : super(balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    print("Withdrawn: $amount, New Balance: $balance");
  }
}

void main5() {
  Account acc;

  // SavingsAccount case
  acc = SavingsAccount(1500);
  acc.withdraw(600); // Allowed
  acc.withdraw(600); // Not allowed (goes below 1000)

  print("----");

  // CurrentAccount case
  acc = CurrentAccount(1500);
  acc.withdraw(600); // Allowed
  acc.withdraw(1000); // Allowed, can even go negative
}

// ---------------------- Advanced Level --------------------------

// Q6: Abstract Classes

// Create an abstract class Employee with abstract method calculateSalary().
// Create two classes: FullTimeEmployee (with monthly salary) and PartTimeEmployee (with hourly rate).
// Implement calculateSalary() differently for each.
// Demonstrate polymorphism with a list of Employees.

// Abstract class
abstract class Employee {
  String name;

  Employee(this.name);

  // Abstract method
  double calculateSalary();
}

// Full time employee
class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

// Part time employee
class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked)
    : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked; // Pay depends on hours
  }
}

void main6() {
  // Polymorphism: Employee reference can hold both types
  List<Employee> employees = [
    FullTimeEmployee("Hassan", 50000),
    PartTimeEmployee("Ali", 500, 80),
  ];

  for (var emp in employees) {
    print("${emp.name} earns: ${emp.calculateSalary()}");
  }
}

// Q7: Interfaces and Multiple Inheritance

// Create an interface Flyable with method fly().
// Create an interface Swimmable with method swim().
// Create a class Duck that implements both Flyable and Swimmable.
// Show how Duck can both fly and swim.
