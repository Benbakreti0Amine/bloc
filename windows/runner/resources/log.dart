///////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
///
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
///
///
///// main.dart

void c() {
  // Print a welcome message
  print('Welcome to the Dart Programming Language!');

  // Create and work with a list of students
  List<Student> students = [
    Student('John', 'Doe', 20, [85, 90, 88]),
    Student('Jane', 'Smith', 22, [92, 85, 91]),
    Student('Emily', 'Johnson', 19, [78, 80, 84]),
  ];

  // Calculate and print the average grade of each student
  for (var student in students) {
    print('${student.fullName()}: Average Grade = ${student.averageGrade()}');
  }

  // Create a course and add students to it
  Course dartCourse = Course('Introduction to Dart', 'DART101');
  dartCourse.addStudent(students[0]);
  dartCourse.addStudent(students[1]);
  dartCourse.addStudent(students[2]);

  // Print the course details
  print(dartCourse);
}

// A class representing a student
class Student {
  String firstName;
  String lastName;
  int age;
  List<int> grades;

  Student(this.firstName, this.lastName, this.age, this.grades);

  // Method to return the full name
  String fullName() {
    return '$firstName $lastName';
  }

  // Method to calculate the average grade
  double averageGrade() {
    return grades.reduce((a, b) => a + b) / grades.length;
  }
}

// A class representing a course
class Course {
  String courseName;
  String courseCode;
  List<Student> students;

  Course(this.courseName, this.courseCode) : students = [];

  // Method to add a student to the course
  void addStudent(Student student) {
    students.add(student);
  }

  // Override the toString method to print course details
  @override
  String toString() {
    String studentNames = students.map((s) => s.fullName()).join(', ');
    return 'Course: $courseName ($courseCode)\nStudents Enrolled: $studentNames';
  }
}

// A utility class for common mathematical operations
class MathUtils {
  // Method to calculate the factorial of a number
  static int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }

  // Method to check if a number is prime
  static bool isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
}

// An enumeration of different user roles
enum UserRole { admin, editor, viewer }

// A class representing a user
class User {
  String username;
  UserRole role;

  User(this.username, this.role);

  // Method to check if the user has admin privileges
  bool isAdmin() {
    return role == UserRole.admin;
  }

  // Override the toString method to print user details
  @override
  String toString() {
    return 'User: $username, Role: $role';
  }
}
// main.dart

void b() {
  // Print a welcome message
  print('Welcome to the Dart Programming Language!');

  // Create and work with a list of students
  List<Student> students = [
    Student('John', 'Doe', 20, [85, 90, 88]),
    Student('Jane', 'Smith', 22, [92, 85, 91]),
    Student('Emily', 'Johnson', 19, [78, 80, 84]),
  ];

  // Calculate and print the average grade of each student
  for (var student in students) {
    print('${student.fullName()}: Average Grade = ${student.averageGrade()}');
  }

  // Create a course and add students to it
  Course dartCourse = Course('Introduction to Dart', 'DART101');
  dartCourse.addStudent(students[0]);
  dartCourse.addStudent(students[1]);
  dartCourse.addStudent(students[2]);

  // Print the course details
  print(dartCourse);

  // Demonstrate MathUtils methods
  print('Factorial of 5: ${MathUtils.factorial(5)}');
  print('Is 7 prime? ${MathUtils.isPrime(7)}');

  // Create and work with users
  User adminUser = User('adminUser', UserRole.admin);
  User editorUser = User('editorUser', UserRole.editor);
  User viewerUser = User('viewerUser', UserRole.viewer);

  print(adminUser);
  print(editorUser);
  print(viewerUser);

  // Check admin privileges
  print('${adminUser.username} is admin: ${adminUser.isAdmin()}');
  print('${editorUser.username} is admin: ${editorUser.isAdmin()}');

  // Demonstrate additional features
  Address address = Address('123 Main St', 'Springfield', 'IL', '62704');
  Company company = Company('Tech Solutions', address);
  print(company);

  Employee employee = Employee('Alice', 'Brown', 30, company);
  print(employee);

  // Work with advanced list operations
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> doubledNumbers = ListUtils.map(numbers, (num) => num * 2);
  print('Doubled numbers: $doubledNumbers');

  // Demonstrate complex enum usage
  Order order = Order(1, OrderStatus.processing);
  print(order);
  order.updateStatus(OrderStatus.shipped);
  print(order);

  // Work with error handling
  try {
    performRiskyOperation();
  } catch (e) {
    print('Caught an error: $e');
  }

  // Work with a generic class
  Box<int> intBox = Box<int>(42);
  Box<String> strBox = Box<String>('Hello, Dart!');
  print('IntBox contains: ${intBox.value}');
  print('StrBox contains: ${strBox.value}');
}

// A class representing a student
class Studendt {
  String firstName;
  String lastName;
  int age;
  List<int> grades;

  Studendt(this.firstName, this.lastName, this.age, this.grades);

  // Method to return the full name
  String fullName() {
    return '$firstName $lastName';
  }

  // Method to calculate the average grade
  double averageGrade() {
    return grades.reduce((a, b) => a + b) / grades.length;
  }
}

// A class representing a course
class Coursee {
  String courseName;
  String courseCode;
  List<Student> students;

  Coursee(this.courseName, this.courseCode) : students = [];

  // Method to add a student to the course
  void addStudent(Student student) {
    students.add(student);
  }

  // Override the toString method to print course details
  @override
  String toString() {
    String studentNames = students.map((s) => s.fullName()).join(', ');
    return 'Course: $courseName ($courseCode)\nStudents Enrolled: $studentNames';
  }
}

// A utility class for common mathematical operations
class MathUtilse {
  // Method to calculate the factorial of a number
  static int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }

  // Method to check if a number is prime
  static bool isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
}

// An enumeration of different user roles
enum UserRolee { admin, editor, viewer }

// A class representing a user
class Usere{
  String username;
  UserRole role;

  Usere(this.username, this.role);

  // Method to check if the user has admin privileges
  bool isAdmin() {
    return role == UserRole.admin;
  }

  // Override the toString method to print user details
  @override
  String toString() {
    return 'User: $username, Role: $role';
  }
}

// A class representing an address
class Address {
  String street;
  String city;
  String state;
  String zipCode;

  Address(this.street, this.city, this.state, this.zipCode);

  @override
  String toString() {
    return '$street, $city, $state $zipCode';
  }
}

// A class representing a company
class Company {
  String name;
  Address address;

  Company(this.name, this.address);

  @override
  String toString() {
    return 'Company: $name, Address: $address';
  }
}

// A class representing an employee
class Employee {
  String firstName;
  String lastName;
  int age;
  Company company;

  Employee(this.firstName, this.lastName, this.age, this.company);

  @override
  String toString() {
    return 'Employee: $firstName $lastName, Age: $age, Company: ${company.name}';
  }
}

// A utility class for advanced list operations
class ListUtils {
  // Method to map a list to another list using a function
  static List<T> map<T>(List list, T Function(dynamic) f) {
    List<T> result = [];
    for (var item in list) {
      result.add(f(item));
    }
    return result;
  }
}

// An enumeration of order statuses
enum OrderStatus { pending, processing, shipped, delivered, cancelled }

// A class representing an order
class Order {
  int id;
  OrderStatus status;

  Order(this.id, this.status);

  void updateStatus(OrderStatus newStatus) {
    status = newStatus;
  }

  @override
  String toString() {
    return 'Order: $id, Status: $status';
  }
}

// Function to perform a risky operation and demonstrate error handling
void performRiskyOperation() {
  throw Exception('This is a risky operation error!');
}

// A generic class to demonstrate the use of generics
class Box<T> {
  T value;

  Box(this.value);
}
