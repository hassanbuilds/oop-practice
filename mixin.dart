// ----------------------- Basic (Understand mixin basics) -----------------------------

// Q1: Create a mixin Logger with a method log(String message).
// - Create a class FileManager that uses Logger.
// - In main(), create FileManager and call log().

import 'dart:ffi';

mixin Logger {
  void log(String message) {
    print('Log: $message');
  }
}

class FileManager with Logger {}

void main() {
  var FileManger = FileManager();
  FileManger.log('File opened successfully');
}

// -------------------- Intermediate (Use multiple mixins) -------------------------------

// Q2: Create two mixins Flyable (fly()) and Swimmable (swim()).
// - Create a class Duck that uses both Flyable and Swimmable.
// - In main(), call both methods on Duck.

mixin Flyable {
  void fly() {
    print("Flying in the sky...");
  }
}

mixin Swimmable {
  void swim() {
    print("Swimming in the water...");
  }
}

class Duck with Flyable, Swimmable {}

void main2() {
  var duck = Duck();
  duck.fly();
  duck.swim();
}

//--------------------- Advanced  level(Mixin with constraints) ------------------------------

// Q3: Create an abstract class Animal with method sound().
// - Create a mixin Runner that requires Animal and adds run().
// - Create a class Dog that extends Animal and uses Runner.
// - In main(), create Dog and call sound() and run().

abstract class Animal {
  void sound() {}
}

mixin Runner on Animal {
  void run() {
    print('Running fast');
  }
}

class Dog extends Animal with Runner {
  @override
  void sound() {
    print('Bark!!!');
  }
}

void main3() {
  var dog = Dog();
  dog.sound();
  dog.run();
}
