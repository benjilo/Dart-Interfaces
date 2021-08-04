//Dart Interfaces

/**
Explanation:

An Interface defines the same as the class where any set of methods can be accessed by an object. 
The Class declaration can interface itself.

In the below example, we implemented multiple interfaces in class College. 
Each data member of Student and Faculty class is overriding in class College. 
We created the object of College class and invoked the overriding functions. It printed the result.

Rules for Implementing Interfaces

A class that implements the interface must override every method and instance variable of an interface.
Dart doesn't provide syntax to declare the interface directly. The class declaration can consider as the interface itself.
An interface class must provide the full implementation of all the methods belong to the interfaces.
We can implement one or more interfaces simultaneously.
Using the interface, we can achieve multiple inheritance. 
 * 
 * **/
//student

class Student {
  int age;
  String name;

  void displayName() {
    print('My name is ${name}');
  }

  void displayAge() {
    print('My age is ${age}');
  }
}

class Faculty {
  int salary;
  String depName;

  void displayDepartment() {
    print('I am a Prof of ${depName}');
  }

  void displaySalary() {
    print('My salary is ${salary}');
  }
}

//Defining interface by implementing another class

class College implements Student, Faculty {
  //Overriding thhe student class members
  int age;
  String name;

  void displayName() {
    print('My name is ${name}');
  }

  void displayAge() {
    print('My age is ${age}');
  }

  //Overriding the faculty class members

  int salary;
  String depName;

  void displayDepartment() {
    print('I am a Prof of ${depName}');
  }

  void displaySalary() {
    print('My salary is  ${salary}');
  }
}

void main() {
  College cg = new College();
  cg.name = 'Cici';
  cg.age = 26;
  cg.depName = 'Computer science';
  cg.salary = 100000;

  cg.displayName();
  cg.displayAge();
  cg.displayDepartment();
  cg.displaySalary();
}
