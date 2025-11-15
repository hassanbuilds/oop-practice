//---------------------Basic Example ----------------
// Q1: Create an interface Printer with a method printData().
// - Create classes InkjetPrinter and LaserPrinter that implement Printer.
// - In main(), create objects of both and call printData().

abstract class Printer {
  void printData();
}

// InkjetPrinter
class InkjetPrinter implements Printer {
  @override
  void printData() {
    print('Printing using Inkjet Printer...');
  }
}

// LaserPrinter
class LaserPrinter implements Printer {
  @override
  void printData() {
    print('Printing using Laser Printer...');
  }
}

void main() {
  Printer printer1 = InkjetPrinter(); //  Object of InkjetPrinter
  printer1.printData();

  Printer printer2 = LaserPrinter(); //  Object of LaserPrinter
  printer2.printData();
}

// Q2: Create an interface Vehicle with methods start() and stop().
// - Create classes Car and Bike that implement Vehicle.
// - In main(), call start() and stop() for both vehicles.

abstract class Vechile {
  void start();
  void stop();
}

class Car implements Vechile {
  @override
  void start() {
    print('Car engine turn on');
  }

  @override
  void stop() {
    print('Car engine turn off');
  }
}

class Bike implements Vechile {
  @override
  void start() {
    print('Bike engine turn on');
  }

  @override
  void stop() {
    print('Bike engine turn off');
  }
}

void main2() {
  Vechile car = Car();
  car.start();
  car.stop();

  Vechile bike = Bike();
  bike.start();
  bike.stop();
}

//---------------------- Intermediate Level (Interfaces + Multiple Implements) ----------------------

// Q3: Create interfaces Camera with method takePhoto()
// and MusicPlayer with method playMusic().
// - Create a class Smartphone that implements both Camera and MusicPlayer.
// - In main(), create a Smartphone object and call both methods.

abstract class Camera {
  void takePhoto();
}

// Music player Interface
abstract class MusicPlayer {
  void playMusic();
}

// Smartphone implements both interfaces
class SmartPhone implements Camera, MusicPlayer {
  @override
  void takePhoto() {
    print('Smartphone is taking photo');
  }

  @override
  void playMusic() {
    print('Smartphone is playing Music');
  }
}

void main3() {
  SmartPhone myphone = SmartPhone();
  myphone.takePhoto(); // form camera interface
  myphone.playMusic(); // from music interface
}

// Q4: Create an interface Payment with method pay(double amount).
// - Create classes CreditCard and PayPal that implement Payment.
// - In main(), process payments using both classes.

abstract class Payement {
  void pay(double amount);
}

class CreditCard implements Payement {
  @override
  void pay(double amount) {
    print('Paid RS. $amount using credit card');
  }
}

class PayPal implements Payement {
  @override
  void pay(double amount) {
    print('Paid RS. $amount using PayPal');
  }
}

void main4() {
  Payement payement1 = CreditCard();
  payement1.pay(500011.0);

  Payement payement2 = PayPal();
  payement2.pay(15015.12);
}

//---------------------- Advanced Level (Interfaces + Polymorphism + Real Example) ---------------------
// Q5: Create an interface Drawable with method draw().
// - Create classes Circle, Rectangle, and Triangle that implement Drawable.
// - In main(), store them in a list of Drawable and call draw() for each.
abstract class Drawble {
  void draw();
}

class Circle implements Drawble {
  @override
  void draw() {
    print('Drawing a Circle');
  }
}

class Rectangle implements Drawble {
  @override
  void draw() {
    print('Drawing a Rectangle');
  }
}

class Triangle implements Drawble {
  void draw() {
    print('Drawing a Triangle');
  }
}

void main5() {
  List<Drawble> shapes = [Circle(), Rectangle(), Triangle()];
  // Call draw() for each shape
  for (var shape in shapes) {
    shape.draw();
  }
}

// Q6: Create interfaces Depositable (deposit(double amount))
// and Withdrawable (withdraw(double amount)).
// - Create a class BankAccount that implements both.
// - In main(), perform deposits and withdrawals on the account.

abstract class Depositable {
  void deposit(double amount);
}

abstract class WithDrawable {
  void deposit(double amount);
}

class BankAccount implements Depositable, WithDrawable {
  double _balance = 0; // private balance field

  @override
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount, New Balance: $_balance");
    } else {
      print("Deposit amount must be positive!");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount, New Balance: $_balance");
    } else {
      print("Insufficient balance or invalid amount!");
    }
  }
}

void main6() {
  BankAccount account = BankAccount();

  account.deposit(1000); // Deposited: 1000, New Balance: 1000
  account.withdraw(500); // Withdrawn: 500, New Balance: 500
  account.withdraw(700); // Insufficient balance
}
