// -------------------------- Basic Example ---------------------------

// Q1: Create a class Car with fields brand and model.
// - Write a default constructor that initializes both fields.
// - Add a method showDetails() that prints "Car: <brand> <model>".
//
// Example: Car("Toyota", "Corolla").showDetails();
// Output: Car: Toyota Corolla

class Car {
  String brand;
  String model;
  //constructor
  Car(this.brand, this.model);

  void showDetail() {
    print('Car: $brand $model');
  }
}

void main() {
  Car car = Car('Mercedes', 'mercedes cls 63 amg');
  car.showDetail();
}

// Q2: Create a class Student with fields name and age.
// - Add a named constructor Student.guest() that sets name = "Guest" and age = 0.
// - Add a method introduce() that prints "Hi, I am <name>, age <age>".
//
// Example: Student.guest().introduce();
// Output: Hi, I am Guest, age 0

class Student {
  String name;
  int age;

  // Normal constructor
  Student(this.name, this.age);

  // Named constructor
  Student.guest() : name = "Guest", age = 0;

  void introduce() {
    print("Hi, I am $name, age $age");
  }
}

void main2() {
  Student student1 = Student("Muhammad Hassan", 20);
  student1.introduce();

  Student guestStudent = Student.guest();
  guestStudent.introduce();
}

// Q3: Create a class Rectangle with fields length and width.
// - Add a constructor with named parameters to initialize both.
// - Add a method area() that prints "Area: <length * width>".
//
// Example: Rectangle(length: 5, width: 3).area();
// Output: Area: 15

class Rectangle {
  int length;
  int width;

  Rectangle({required this.length, required this.width});
  void area() {
    print('Area: $length * $width');
  }
}

void main3() {
  Rectangle rectangle = Rectangle(length: 5, width: 3);
  rectangle.area();
}

// Q4: Create a class Book with fields title and author.
// - Create a constructor with required named parameters.
// - Add a method details() that prints "<title> by <author>".
//
// Example: Book(title: "1984", author: "Orwell").details();
// Output: 1984 by Orwell

class Book {
  String title;
  String author;
  Book({required this.author, required this.title});

  void details() {
    print('$title by $author');
  }
}

void main4() {
  Book book = Book(title: 'Orwell', author: '1984');
  book.details();
}

// -------------------- Intermediate Level -----------------------------




// Q5: Create a class Point with fields x and y.
// - Add a normal constructor to initialize both values.
// - Add a named constructor Point.origin() that sets x = 0 and y = 0.
// - Add a method show() that prints "(x, y)".
//
// Example: Point.origin().show();  
// Output: (0, 0)







// Q6: Create a class Person with fields firstName, lastName, and fullName.
// - Use an initializer list to set fullName = "$firstName $lastName".
// - Add a method introduce() that prints "I am <fullName>".
//
// Example: Person("Ali", "Khan").introduce();  
// Output: I am Ali Khan







// Q7: Create a class Circle with a field radius.
// - Add a constant constructor.
// - Create multiple const objects and check if they are identical.
//
// Example:  
// const c1 = Circle(5);
// const c2 = Circle(5);
// print(identical(c1, c2));  
// Output: true






// Q8: Create a class User with fields username and email.
// - Add a factory constructor User.fromMap(Map<String, String>) 
//   that returns a User object.
// - Add a method show() that prints "username: <username>, email: <email>".
//
// Example: User.fromMap({"username": "hassan", "email": "h@gmail.com"}).show();  
// Output: username: hassan, email: h@gmail.com



//-------------------- Advanced Level -------------------------


// Q9: Create a base class Shape with a constructor that prints "Shape created".
// - Extend Shape with Square and Triangle classes.
// - Each child constructor should call the parent constructor.
// - Add a method draw() in each child class that prints its shape name.
//
// Example: Square().draw();  
// Output: Shape created
//         Drawing Square












// Q10: Create a class DatabaseConnection with a private constructor.
// - Add a static factory method getInstance() that always returns 
//   the same object (Singleton).
// - Add a method query() that prints "Running query...".
//
// Example:  
// var db1 = DatabaseConnection.getInstance();
// var db2 = DatabaseConnection.getInstance();
// print(identical(db1, db2));  
// Output: true






// Q11: Create a class Vehicle with a constructor that takes type and wheels.
// - Add redirecting constructors Vehicle.car() and Vehicle.bike() 
//   that set type = "Car", wheels = 4 and type = "Bike", wheels = 2.
// - Add a method show() that prints "<type> has <wheels> wheels".
//
// Example: Vehicle.bike().show();  
// Output: Bike has 2 wheels








// Q12: Create a class JsonResponse with a field data.
// - Add a factory constructor JsonResponse.from(String input).
// - If input starts with "{" and ends with "}", return JsonResponse(input).
// - Otherwise, throw a FormatException.
// - Add a method show() that prints "Valid JSON: <data>".
//
// Example: JsonResponse.from("{id:1}").show();  
// Output: Valid JSON: {id:1}
