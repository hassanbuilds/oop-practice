// ----------------- Basic Example -------------------------------


// Q1: Create a variable name of type String? and assign it null.
// Try to print its length safely (without causing an error).
//
// Example: String? name = null;  // should print "No name provided".







// Q2: Create a class User with fields: username (String), email (nullable String).
// Add a method showEmail() that prints the email if not null,
// otherwise print "No email provided".
//
// Example: User("hassan123", null).showEmail();  // Output: "No email provided"

// Q3: Write a function printSquare(int? number) that safely prints
// the square of number if it is not null, otherwise print "Number is missing".
//
// Example: printSquare(4);   // Output: 16
//          printSquare(null); // Output: "Number is missing"


// Q4: Create a class Product with a nullable field price (double?).
// Add a method getPriceWithTax(double taxRate) that returns price * taxRate,
// but if price is null, return 0.0 instead.
//
// Example: Product(null).getPriceWithTax(1.1);  // Output: 0.0

// Q5: Write a function divideNumbers(int? a, int? b) that tries to divide a by b.
// - If either is null, print "Missing input".
// - If b is 0, print "Cannot divide by zero".
// - Otherwise print the result.
//
// Example: divideNumbers(10, null);  // Output: "Missing input"

// Q6: Create a class Student with a nullable field grade (int?).
// Write a method checkPass() that throws an exception if grade is null,
// otherwise print "Pass" if grade >= 50, else "Fail".
//
// Example: Student(null).checkPass();  // Throws Exception

// Q7: Write a function fetchData(String? url) that simulates fetching data.
// - If url is null, throw an ArgumentError.
// - If url is empty, throw a FormatException.
// - Otherwise print "Fetching from <url>".
//
// Example: fetchData(null);   // Throws ArgumentError

// Q8: Create a class BankAccount with nullable balance (double?).
// Write a method withdraw(double amount) that:
// - Throws Exception if balance is null.
// - Throws Exception if balance < amount.
// - Otherwise deducts and prints new balance.
//
// Example: BankAccount(100).withdraw(50);  // Output: New balance = 50






// Q9: Write a function getUserName(Map<String, String?> user) that:
// - Uses null check operator (!) to force access "name".
// - If "name" is null, it should throw an error automatically.
// - Wrap it in try-catch and print the error if occurs.
//
// Example: getUserName({"name": null});  // Caught error