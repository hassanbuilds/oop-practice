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
  Printer printer1 = InkjetPrinter(); // ✅ Object of InkjetPrinter
  printer1.printData();

  Printer printer2 = LaserPrinter(); // ✅ Object of LaserPrinter
  printer2.printData();
}


// Q2: Create an interface Vehicle with methods start() and stop().
// - Create classes Car and Bike that implement Vehicle.
// - In main(), call start() and stop() for both vehicles.


//---------------------- Intermediate Level (Interfaces + Multiple Implements) ----------------------

// Q3: Create interfaces Camera with method takePhoto()
// and MusicPlayer with method playMusic().
// - Create a class Smartphone that implements both Camera and MusicPlayer.
// - In main(), create a Smartphone object and call both methods.





// Q4: Create an interface Payment with method pay(double amount).
// - Create classes CreditCard and PayPal that implement Payment.
// - In main(), process payments using both classes.


//---------------------- Advanced Level (Interfaces + Polymorphism + Real Example) ---------------------
// Q5: Create an interface Drawable with method draw().
// - Create classes Circle, Rectangle, and Triangle that implement Drawable.
// - In main(), store them in a list of Drawable and call draw() for each.





// Q6: Create interfaces Depositable (deposit(double amount)) 
// and Withdrawable (withdraw(double amount)).
// - Create a class BankAccount that implements both.
// - In main(), perform deposits and withdrawals on the account.