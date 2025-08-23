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


//Q5: Method Overriding with Polymorphism

// Create a base class Account with a method withdraw(amount).
// Create two derived classes: SavingsAccount and CurrentAccount.
// In SavingsAccount, disallow withdraw if balance < 1000.
// In CurrentAccount, allow withdraw without restriction.
// Demonstrate polymorphism by using an Account reference to point to both.

// ---------------------- Advanced Level --------------------------

// Q6: Abstract Classes

// Create an abstract class Employee with abstract method calculateSalary().
// Create two classes: FullTimeEmployee (with monthly salary) and PartTimeEmployee (with hourly rate).
// Implement calculateSalary() differently for each.
// Demonstrate polymorphism with a list of Employees.


// Q7: Interfaces and Multiple Inheritance

// Create an interface Flyable with method fly().
// Create an interface Swimmable with method swim().
// Create a class Duck that implements both Flyable and Swimmable.
// Show how Duck can both fly and swim.