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
