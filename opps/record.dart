//------------------- Basic Example ----------------------------

// Q1: Create a record (String, int) representing a book (title, pages).
// Print both values.
void main() {
  var book = (Title: 'OPPS by practice by Hassan', Pages: 69);
  print('Book:${book.Title}');
  print('Pages:${book.Pages}');
}

// OutPut:Book: OOP by Practice by Hassan
//  Pages: 69

//------------------Intermediate Example ------------------------

// Q2: Create a record (String name, int age, String city) for a user.
// Use named fields. Print only city.

void main2() {
  var user = (name: 'Muhammad Hassan', city: 'Lahore');
  print('City ${user.city}');
}

// Output;  City: Lahore

// Q3: Write a function swap((int, int) pair) that returns a new record with swapped values.
// Example: (3, 7) → (7, 3).

(int, int) swap((int, int) pair) {
  return (pair.$2, pair.$1); // $1 is first value, $2 is second
}

void main3() {
  var numbers = (3, 7);
  var swapped = swap(numbers);

  print("Original: $numbers");
  print("Swapped: $swapped");
}

//-------------------Advanced Example -------------------------------

// Q4: Create a list of records representing students: (String name, int marks).
// Print the name of the student with the highest marks.

void main4() {
  // Create a list of records (name, marks)
  var students = [('Ali', 85), ('Hassan', 92), ('Usman', 76), ('Ayesha', 95)];

  // Find the student with the highest marks
  var topStudent = students.reduce((a, b) => a.$2 > b.$2 ? a : b);

  print("Top Student: ${topStudent.$1}, Marks: ${topStudent.$2}");
}
