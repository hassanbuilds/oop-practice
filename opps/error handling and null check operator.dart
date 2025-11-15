// ----------------- Basic Example -------------------------------

// Q1: Create a variable name of type String? and assign it null.
// Try to print its length safely (without causing an error).
//
// Example: String? name = null;  // should print "No name provided".

void main() {
  String? name = null;
  if (name != null) {
    print(name.length); // only is name is present
  } else {
    print('No name provided'); // runs when name is null
  }
}

// Q2: Create a class User with fields: username (String), email (nullable String).
// Add a method showEmail() that prints the email if not null,
// otherwise print "No email provided".
//
// Example: User("hassan123", null).showEmail();  // Output: "No email provided"

class User {
  String username;
  String? email;

  User(this.username, this.email);

  void showEmail() {
    if (email != null) {
      print(email);
    } else {
      print('No email provided');
    }
  }
}

void main2() {
  // Example 1: User with email
  User user = User('Hassan', 'mhassan.codes@gmail.com');
  user.showEmail();
  // Example 2: user with no emial
  User user2 = User('Abdullah', null);
  user2.showEmail();
}

// Q3: Write a function printSquare(int? number) that safely prints
// the square of number if it is not null, otherwise print "Number is missing".
//
// Example: printSquare(4);   // Output: 16
//          printSquare(null); // Output: "Number is missing"

void printSquare(int? number) {
  if (number != null) {
    print(number * number);
  } else {
    print('Number is missing');
  }
}

void main3() {
  printSquare(4); // Output: 16
  printSquare(null); // Output: Number is missing
}

// ----------------------- Intermediate Level -------------------

// Q4: Create a class Product with a nullable field price (double?).
// Add a method getPriceWithTax(double taxRate) that returns price * taxRate,
// but if price is null, return 0.0 instead.
//
// Example: Product(null).getPriceWithTax(1.1);  // Output: 0.0

class Product {
  double? price;

  // CONSTRUCTOR
  Product(this.price);

  //Method to calculate price with tax

  double priceWithTax(double taxRate) {
    // if price is null return 0.0
    return (price ?? 0.0) * taxRate;
  }
}

void main4() {
  Product product = Product(100.0);
  print(product.priceWithTax(1.1));

  Product product2 = Product(null);
  print(product2.priceWithTax(1.1));
}

// Q5: Write a function divideNumbers(int? a, int? b) that tries to divide a by b.
// - If either is null, print "Missing input".
// - If b is 0, print "Cannot divide by zero".
// - Otherwise print the result.
//
// Example: divideNumbers(10, null);  // Output: "Missing input"

void divideNumber(int? a, int? b) {
  if (a == null || b == null) {
    print('Missing Input');
  } else if (b == 0) {
    print('Canot divider by zero');
  } else {
    print(a / b);
  }
}

void main5() {
  divideNumber(10, null); // Missing oputput
  divideNumber(56, 0); // Canot divide by zero
  divideNumber(20, 10); // output 2.0
}

// Q6: Create a class Student with a nullable field grade (int?).
// Write a method checkPass() that throws an exception if grade is null,
// otherwise print "Pass" if grade >= 50, else "Fail".
//
// Example: Student(null).checkPass();  // Throws Exception

class Student {
  int? grade;
  Student(this.grade);

  void checkPass() {
    if (grade == null) {
      throw Exception('Some error message');
    } else if (grade! >= 50) {
      print('Pass');
    } else {
      print('Fail');
    }
  }
}

void main6() {
  Student student1 = Student(58);
  student1.checkPass(); // PASS
  Student student2 = Student(35);
  student2.checkPass(); // FAIL
  Student student3 = Student(null);
  student3.checkPass(); // Throw Exception
}

//------------------------------ Advance level -----------------------
// Q7: Write a function fetchData(String? url) that simulates fetching data.
// - If url is null, throw an ArgumentError.
// - If url is empty, throw a FormatException.
// - Otherwise print "Fetching from <url>".
//
// Example: fetchData(null);   // Throws ArgumentError

void fetchData(String? URL) {
  if (URL == null) {
    throw ArgumentError('URL cant be null');
  } else if (URL.isEmpty) {
    throw FormatException('URL should not be empty ');
  } else {
    print('Fetching data from $URL');
  }
}

void main7() {
  try {
    fetchData(null);
  } catch (e) {
    print(e);
  }

  try {
    fetchData('');
  } catch (e) {
    print(e);
  }

  fetchData(
    'https://github.com/hassanbuilds?tab=overview&from=2025-08-01&to=2025-08-19',
  );
}

// Q8: Create a class BankAccount with nullable balance (double?).
// Write a method withdraw(double amount) that:
// - Throws Exception if balance is null.
// - Throws Exception if balance < amount.
// - Otherwise deducts and prints new balance.
//
// Example: BankAccount(100).withdraw(50);  // Output: New balance = 50

class BankAccount {
  double? balance;

  // constructor
  BankAccount(this.balance);

  void withDraw(double amount) {
    if (balance == null) {
      throw Exception('Balance is NULL');
    } else if (balance! < amount) {
      throw Exception('Your balance is insufficient');
    } else {
      balance = balance! - amount;
      print('New balance = $balance');
    }
  }
}

void main8() {
  try {
    var account = BankAccount(100);
    account.withDraw(50); //  works
    account.withDraw(70); //  will throw "insufficient balance"
  } catch (e) {
    print('ERROR: $e');
  }
}

// Q9: Write a function getUserName(Map<String, String?> user) that:
// - Uses null check operator (!) to force access "name".
// - If "name" is null, it should throw an error automatically.
// - Wrap it in try-catch and print the error if occurs.
//
// Example: getUserName({"name": null});  // Caught error

void getUserName(Map<String, String?> user) {
  try {
    // // Forcefully unwrap using
    String name = user['name']!;
    print('User name $name');
  } catch (e) {
    print('Caugth Error $e');
  }
}

void main9() {
  getUserName({"name": "Hassan"}); //  Works fine
  getUserName({"name": null}); //  Throws, caught in catch
  getUserName({}); //  Also throws, caught in catch
}
