//-------------------- Basic level -----------------------------------------
// Q1: Create an enum Direction with values north, south, east, west.
// - Write a function move() that prints "Moving <direction>".
// - In main(), call move() with two different directions.

enum Direction { north, south, east, west }

// create a function that takes Direction as a parameter
void move(Direction direction) {
  print('Moving statement');
}

// use fuction in main
void main() {
  move(Direction.north);
  move(Direction.south);
}

// Q2: Create an enum Season with values spring, summer, autumn, winter.
// - Write a function getSeasonActivity() that returns an activity for each season.
// - Use switch-case inside the function.
// - In main(), print activity for Season.summer.

enum Season { spring, summer, autumn, winter }

String getSeasonActivity(Season season) {
  switch (season) {
    case Season.spring:
      return "Enjoy the blommimg flowers";
    case Season.summer:
      return "Go to the beach and enjoy";
    case Season.autumn:
      return "Collect falling leave";
    case Season.winter:
      return "Build snowman";
  }
}

void main2() {
  print(getSeasonActivity(Season.winter));
}

// ------------------- Intermediate Level --------------------------------

// Q3: Create an enum OrderStatus with values pending, processing, shipped, delivered.
// - Write a function checkStatus() that prints a different message for each status.
// - In main(), simulate changing order status step by step.

// Q3: Create an enum OrderStatus with values pending, processing, shipped, delivered.
// - Write a function checkStatus() that prints a different message for each status.
// - In main(), simulate changing order status step by step.

enum OrderStatus { pending, processing, shipped, delivered }

void checkStatus(OrderStatus status) {
  switch (status) {
    case OrderStatus.pending:
      print(" Order received. Waiting for confirmation.");
      break;
    case OrderStatus.processing:
      print(" Order is being prepared.");
      break;
    case OrderStatus.shipped:
      print(" Order has been shipped.");
      break;
    case OrderStatus.delivered:
      print(" Order delivered! Enjoy.");
      break;
  }
}

void main3() {
  // Simulate the lifecycle step by step
  final flow = [
    OrderStatus.pending,
    OrderStatus.processing,
    OrderStatus.shipped,
    OrderStatus.delivered,
  ];

  for (final status in flow) {
    print("\nStatus: ${status.name.toUpperCase()}");
    checkStatus(status);
  }
}

// Q4: Create an enum PaymentMethod with values cash, creditCard, debitCard, paypal.
// - Write a function pay(amount, method) that prints "Paid <amount> using <method>".
// - In main(), call pay() with two different methods.

enum PaymentMethod { cash, creditCard, debitCard, paypal }

void pay(double amount, PaymentMethod method) {
  print("Paid $amount using ${method.name}.");
}

void main4() {
  pay(1500, PaymentMethod.cash);
  pay(2999.50, PaymentMethod.creditCard);
}
//------------------------- Advanced Level  ---------------------------------

// Q5: Create an enum Role { admin, editor, viewer }.
// - Create a class User with fields: name and role.
// - Add a method permissions() that prints permissions based on role.
// - In main(), create 3 users with different roles and show their permissions.

enum Role { admin, editor, viewer }

class User {
  String name;
  Role role;

  User(this.name, this.role);

  void permissions() {
    switch (role) {
      case Role.admin:
        print(
          "$name (Admin): Full access to manage users, content, and settings.",
        );
        break;
      case Role.editor:
        print(
          "$name (Editor): Can edit and publish content, but no admin rights.",
        );
        break;
      case Role.viewer:
        print("$name (Viewer): Can only view content.");
        break;
    }
  }
}

void main5() {
  var user1 = User("Ali", Role.admin);
  var user2 = User("Sara", Role.editor);
  var user3 = User("Bilal", Role.viewer);

  user1.permissions();
  user2.permissions();
  user3.permissions();
}

// Q6: Create an enum TrafficLight { red, yellow, green } with an extension.
// - Add a method action() inside the extension that returns "Stop", "Wait", or "Go".
// - In main(), call action() for each traffic light value using a loop.

enum TrafficLight { red, yellow, green }

extension TrafficLightAction on TrafficLight {
  String action() {
    switch (this) {
      case TrafficLight.red:
        return "Stop";
      case TrafficLight.yellow:
        return "Wait";
      case TrafficLight.green:
        return "Go";
    }
  }
}

void main6() {
  for (var light in TrafficLight.values) {
    print("${light.name.toUpperCase()}: ${light.action()}");
  }
}
