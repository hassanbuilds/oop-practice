//-----------------------------Basic Example 1------------------------
// Q1: Declare a nullable String? variable called 'name'.
//     Don’t assign any value. Print it.

void basicExample1() {
  String? name; // nullable String variable, not assigned any value
  print(name); //  output: null
}

// ------------------ Basic Example 2 ------------------
// Q2: Declare a nullable int? variable 'age'. Assign it null explicitly. Print it.

void basicExample2() {
  int? age = null; //nullable int, explicitly assigned null
  print(age); // output null
}

// ------------------ Basic Example 3 ------------------
// Q3: Use the null-aware operator (??).
// Example: if city is null, print "Unknown City".
// Write a similar example for your own variable.

// Solution:1)Using if and else !
void basicExamople3() {
  String? city = null;
  if (city == null) {
    print('Unknown City');
  } else {
    print(city);
  }
}
// Solution:2) Using null-aware operator.

void basicExample3() {
  String? city = null;
  print(city ?? 'Unknown City'); // using null-aware operator
}

// ------------------ Basic Example 4 ------------------
// Q4: Declare a nullable double? variable 'price'.
// If it is null, assign a default value of 100.0 and then print it.

void basicExampole4() {
  double? price; //declared as nullable, currently null
  price ??= 100.0; //   assigns 100.0 only because price is null
  print(price); // result 100.0
}

// ------------------ Basic Example 5 ------------------
// Q5: Create a nullable bool? variable 'isStudent'.
// Print "Yes, student" if true, "Not a student" if false, and "No data" if null.

void basicExample5() {
  bool? isStudent; // declared as nullable
  if (isStudent == true) {
    print('Yes, Student');
  } else if (isStudent == false) {
    print('Not a student');
  } else {
    print('No data');
  }
}

// ------------------ Boolean Example 1 ------------------
// Q1: Use a nullable bool (isLoggedIn).
// If true → print "Welcome back!".
// If false → print "Please login".
// If null → print "No login data".
// Example: bool? isLoggedIn;

void booleanExample1() {
  bool? isLoggedIn;
  if (isLoggedIn == true) {
    print('Welcome Back!');
  } else if (isLoggedIn == false) {
    print('Please Login');
  } else {
    print('No Login data');
  }
}

// ------------------ Boolean Example 2 ------------------
// Q2: Use a nullable bool (hasSubscription).
// If true → print "Premium Access".
// If false → print "Free Access".
// If null → print "Unknown Subscription Status".
// Example: bool? hasSubscription;

void booleanExample2() {
  bool? hasSubscription;
  if (hasSubscription == true) {
    print('Premium Accerss');
  } else if (hasSubscription == false) {
    print('Free Access');
  } else {
    print('Unknown Subscription Status');
  }
}

// ------------------ Boolean Example 3 ------------------
// Q3: Use a nullable bool (isDarkMode).
// If true → print "Dark Mode Enabled".
// If false → print "Light Mode Enabled".
// If null → print "No Preference Saved".
// Example: bool? isDarkMode;

void booleanExample3() {
  bool? isDarkMode;
  if (isDarkMode == true) {
    print('Dark Mode Enabled');
  } else if (isDarkMode == false) {
    print('Light Mode Enabled');
  } else {
    print('Noi Preference Mode');
  }
}

// ------------------ Number Example 1 ------------------
// Q4: Use a nullable int (score).
// If score >= 50 → print "Pass".
// If score < 50 → print "Fail".
// If null → print "No score available".
// Example: int? score;

void numberExample1() {
  int? score;
  if (score == null) {
    print('No score avaliable');
  } else if (score >= 50) {
    print('Passed');
  } else {
    print('Failed');
  }
  //Output: No score available
}

// ------------------ Number Example 2 ------------------
// Q5: Use a nullable double (balance).
// If > 0 → print "Positive Balance".
// If == 0 → print "Zero Balance".
// If < 0 → print "Overdrawn".
// If null → print "No balance info".
// Example: double? balance;

void numberExample2() {
  double? balance;
  if (balance == null) {
    print('No balance info');
  } else if (balance > 0) {
    print('Positive Balance');
  } else if (balance == 0) {
    print('Zero balance');
  } else if (balance < 0) {
    print('Overdrawn');
  }
}

// ------------------ String Example 1 ------------------
// Q6: Use a nullable String (username).
// If not null & not empty → print "Hello, <username>".
// If null → print "Guest User".
// Example: String? username;

void stringExample1() {
  String? username;
  if (username == null) {
    print('Guest User');
  } else if (username.isNotEmpty) {
    print('Hello $username');
  } else {
    print('Guest user');
  }
}

// ------------------ String Example 2 ------------------
// Q7: Use a nullable String (city).
// If "Karachi" → print "Welcome to Karachi".
// Else if "Lahore" → print "Welcome to Lahore".
// If null → print "City not provided".
// Example: String? city;

void stringExample() {
  String? city;
  if (city == null) {
    print('City not provided');
  } else if (city == 'Karachi') {
    print('Welcome to karachi');
  } else if (city == 'Lahore') {
    print('Welcome to lahore');
  } else {
    print('city not recognized');
  }
}

// ------------------ Mixed Example 1 ------------------
// Q8: Use int? marks and bool? isPresent.
// If isPresent == true and marks != null → print "Marks: <marks>".
// If isPresent == false → print "Absent".
// If marks == null → print "No marks available".
// Example: int? marks; bool? isPresent;

void mixedExample1() {
  int? mark;
  bool? isPresent;
  if (isPresent == true && mark != null) {
    print('Marks $mark');
  } else if (isPresent == false) {
    print('Absent');
  } else if (mark == null) {
    print('No marks available');
  } else {
    print('student not recodnized');
  }
}

// ------------------ Mixed Example 2 ------------------
// Q9: Use bool? hasJob and int? salary.
// If hasJob == true && salary != null → print "Employed with salary <salary>".
// If hasJob == false → print "Unemployed".
// If hasJob == null → print "Job status unknown".
// Example: bool? hasJob; int? salary;

void mixedExample2() {
  bool? hasJob;
  int? salary;

  if (hasJob == true && salary != null) {
    print('Employed with salary $salary');
  } else if (hasJob == false) {
    print('Unemployed');
  } else if (hasJob == null) {
    print('Job status unknown');
  }
}

// ------------------------ Intermediate Level--------------------

// ------------------ Intermediate Example 1 ------------------
// Q1: Create a Person class with String? name and int? age.
// If name != null && age != null → print "Name: <name>, Age: <age>".
// Otherwise → print "Incomplete data".
// Example: Person? p = Person(name: "Ali", age: 20);

class Person {
  String? name;
  int? age;

  Person({this.name, this.age});
}

void main() {
  //Example one both values are present
  Person p1 = Person(name: 'Hassan', age: 20);
  checkPerson(p1);

  //Example two string has name or int are preset
  Person p2 = Person(name: 'Abdullah');
  checkPerson(p2);

  //Example three both things are not present
  Person p3 = Person();
  checkPerson(p3);
}

void checkPerson(Person person) {
  if (person.name != null && person.age != null) {
    print('Name ${person.name}, Age ${person.age}');
  } else {
    print('Incomplete data');
  }
}
