//1. An interface is implemented by using printable
abstract class Printable{
  void printInfo();
}

class Person{
  String name;
  int age;
  Person(this.name,this.age);
}
//2. Inheritance is implemented when student class extends person class
class Student extends Person implements Printable{
  int grade;
  Student(String name, int age,this.grade):super(name,age);

  //3. Student class overrides the printInfo() method inherited from person class
  @override
  void printInfo(){
    print('Name: $name,Age: $age,Grade: $grade');
  }
}

class School{
  List<Student> students=[];
  //4. An instance of a class is initialized with data from a file. This can be acieved in the main program
  void addStudent(Student student){
    students.add(student);
  }
  // 5. A methd that demonstrates the use of a loop
  void printStudents(){
    for(var student in students){
      student.printInfo();
    }
  }
}

void main(){
  var school=School();

  //Adding students
  var student1=Student('Mary',18,9);
  var student2=Student('Eli',18,10);
  var student3=Student('Faith',17,8);

  school.addStudent(student1);
  school.addStudent(student2);
  school.addStudent(student3);

  //Printing the student details
  school.printStudents();
}