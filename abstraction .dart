// ----------------------Basic Example-----------------------------------

// Q1: Create an abstract class Shape with abstract methods area() and perimeter().
// - Create classes Circle and Rectangle that extend Shape.
// - Implement area() and perimeter() in both classes.
// - In main(), create objects of Circle and Rectangle and print their area & perimeter.

abstract class Shape {
  double area();
  double perimeter();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.542 * radius * radius;

  @override
  double perimeter() => 2 * 3.542 * radius;
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;

  @override
  double perimeter() => 2 * (width + height);
}

void main() {
  Shape circle = Circle(5);
  Shape radius = Rectangle(4, 6);

  print("Circle -> Area: ${circle.area()}, Perimeter: ${circle.perimeter()}");
  print(
    "Rectangle -> Area: ${radius.area()}, Perimeter: ${radius.perimeter()}",
  );
}

// Q2: Create an abstract class Animal with abstract method sound().
// - Create classes Dog and Cat that extend Animal.
// - Implement sound() in both classes.
// - In main(), create a list of animals and call sound() for each.

abstract class Animal {
  void sound() {}
}

class Dog extends Animal {
  @override
  void sound() => print('Dog says: Woof Woof!');
}

class Cat extends Animal {
  @override
  void sound() => print('Cat says: Meow Meow!!');
}

void main2() {
  List<Animal> animals = [Dog(), Cat()];
  for (var a in animals) {
    a.sound();
  }
}

//--------------------------Intermediate level ---------------------------

// Q3: Create an abstract class Payment with:
// - An abstract method processPayment(double amount).
// - A normal method showReceipt() that prints "Payment completed."
//
// Create two classes CreditCardPayment and PayPalPayment that extend Payment.
// - Implement processPayment() in both classes.
// - In main(), create a list of Payment objects and process payments polymorphically.

abstract class Payment {
  void processPayment(double amount);

  void showReceipt() {
    print("Payment completed.");
  }
}

class CreditCardPayment extends Payment {
  @override
  void processPayment(double amount) {
    print("Processing Credit Card Payment of \$${amount}");
    showReceipt();
  }
}

class PayPalPayment extends Payment {
  @override
  void processPayment(double amount) {
    print("Processing PayPal Payment of \$${amount}");
    showReceipt();
  }
}

void main3() {
  List<Payment> payments = [CreditCardPayment(), PayPalPayment()];

  for (var p in payments) {
    p.processPayment(200);
  }
}

// output:    Processing the credit card payment of $200
// output: Payment completed
//output:  Processing PayPal payment of $200
//output:  Payment completed

// Q4: Create an abstract class Employee with:
// - An abstract method calculateSalary().
// - A normal method showRole() that prints role.
//
// Create classes FullTimeEmployee and PartTimeEmployee that extend Employee.
// - FullTimeEmployee: salary = monthlySalary
// - PartTimeEmployee: salary = hoursWorked * hourlyRate
// - In main(), calculate salary for both employees.

abstract class Employee {
  void calculateSalary();

  void showRole(String role) {
    print('role $role');
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;
  FullTimeEmployee(this.monthlySalary);
  @override
  void calculateSalary() {
    showRole('Full time employee');
    print('Salary: \$${monthlySalary}');
  }
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;
  PartTimeEmployee(this.hoursWorked, this.hourlyRate);
  @override
  void calculateSalary() {
    showRole('Part time employee');
    print('Salary: \$${hourlyRate * hourlyRate}');
  }
}

void main4() {
  Employee employee = FullTimeEmployee(500000);
  Employee employee2 = PartTimeEmployee(89, 500);

  employee.calculateSalary();
  employee2.calculateSalary();
}

// ------------------------- Advance level ------------------------------------

// Q5: Create an abstract class Transport with abstract methods:
// - bookTicket()
// - calculateFare(int distance)
//
// Create abstract subclasses RoadTransport and AirTransport.
// - Create classes Bus and Car that extend RoadTransport.
// - Create class Airplane that extends AirTransport.
//
// Create a TransportFactory class that returns a Transport object (bus, car, airplane).
// In main(), choose a transport type, book a ticket, and calculate fare.

abstract class Transport {
  void bookTicket();
  double calculateFare(int distance);
}

abstract class RoadTransport extends Transport {}

abstract class AirTransport extends Transport {}

class Bus extends RoadTransport {
  @override
  void bookTicket() => print("Bus Ticket Booked");

  @override
  double calculateFare(int distance) => distance * 5;
}

class Car extends RoadTransport {
  @override
  void bookTicket() => print("Car Ride Booked");

  @override
  double calculateFare(int distance) => distance * 15;
}

class Airplane extends AirTransport {
  @override
  void bookTicket() => print("Airplane Ticket Booked");

  @override
  double calculateFare(int distance) => distance * 50;
}

class TransportFactory {
  static Transport getTransport(String type) {
    switch (type.toLowerCase()) {
      case "bus":
        return Bus();
      case "car":
        return Car();
      case "airplane":
        return Airplane();
      default:
        throw Exception("Invalid Transport Type");
    }
  }
}

void main5() {
  Transport t1 = TransportFactory.getTransport("bus");
  t1.bookTicket();
  print("Fare: \$${t1.calculateFare(20)}");

  Transport t2 = TransportFactory.getTransport("airplane");
  t2.bookTicket();
  print("Fare: \$${t2.calculateFare(200)}");
}

// Q6: Create an abstract class Account with:
// - abstract method deposit(double amount)
// - abstract method withdraw(double amount)
// - a normal method showBalance()
//
// Create two classes SavingsAccount and CurrentAccount that extend Account.
// - SavingsAccount: add 5% interest after deposit
// - CurrentAccount: deduct 1% fee after withdraw
//
// In main(), perform transactions and show balance.

abstract class Account {
  double balance = 0;

  void deposit(double amount);
  void withdraw(double amount);

  void showBalance() {
    print("Current Balance: \$${balance}");
  }
}

class SavingsAccount extends Account {
  @override
  void deposit(double amount) {
    balance += amount + (amount * 0.05);
    print("Deposited with 5% interest");
  }

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawal successful");
    } else {
      print("Insufficient balance");
    }
  }
}

class CurrentAccount extends Account {
  @override
  void deposit(double amount) {
    balance += amount;
    print("Deposited without interest");
  }

  @override
  void withdraw(double amount) {
    double fee = amount * 0.01;
    if ((amount + fee) <= balance) {
      balance -= (amount + fee);
      print("Withdrawal successful (1% fee deducted)");
    } else {
      print("Insufficient balance");
    }
  }
}

void main6() {
  Account acc1 = SavingsAccount();
  acc1.deposit(1000);
  acc1.showBalance();
  acc1.withdraw(200);
  acc1.showBalance();

  Account acc2 = CurrentAccount();
  acc2.deposit(2000);
  acc2.showBalance();
  acc2.withdraw(500);
  acc2.showBalance();
}
