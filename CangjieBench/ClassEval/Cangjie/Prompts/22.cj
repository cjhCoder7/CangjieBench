import std.collection.ArrayList
import std.collection.HashMap

class ClassRegistrationSystem {

    /*
    This is a class as a class registration system, allowing to register students, register them for classes, retrieve students by major, get a list of all majors, and determine the most popular class within a specific major.
    */

    var students: ArrayList<HashMap<String, String>>
    var students_registration_classes: HashMap<String, ArrayList<String>>

    public init() {
        /*
        Initialize the registration system with the attribute students and students_registration_class.
        students is a list of student dictionaries, each student dictionary has the key of name and major.
        students_registration_class is a dictionaries, key is the student name, value is a list of class names
        */
        this.students = ArrayList<HashMap<String, String>>()
        this.students_registration_classes = HashMap<String, ArrayList<String>>()
    }

    public func register_student(student: HashMap<String, String>): Int64 {
        /*
        register a student to the system, add the student to the students list, if the student is already registered, return 0, else return 1
        */

    }

    public func register_class(student_name: String, class_name: String): ArrayList<String> {
        /*
        register a class to the student.
        :param student_name: String
        :param class_name: String
        :return a list of class names that the student has registered
        >>> registration_system = ClassRegistrationSystem()
        >>> registration_system.register_class("John", "CS101")
        >>> registration_system.register_class("John", "CS102")
        ["CS101", "CS102"]
        */

    }

    public func get_students_by_major(major: String): ArrayList<String> {
        /*
        get all students in the major
        :param major: String
        :return a list of student name
        >>> registration_system = ClassRegistrationSystem()
        >>> student1 = HashMap<String, String>([("name", "John"), ("major", "Computer Science")])
        >>> registration_system.register_student(student1)
        >>> registration_system.get_students_by_major("Computer Science")
        ["John"]
        */

    }

    public func get_all_major(): ArrayList<String> {
        /*
        get all majors in the system
        :return a list of majors
        >>> registration_system = ClassRegistrationSystem()
        >>> student1 = HashMap<String, String>([("name", "John"), ("major", "Computer Science")])
        >>> registration_system.students = ArrayList<HashMap<String, String>>()
        >>> registration_system.students.add(student1)
        >>> registration_system.get_all_major()
        ["Computer Science"]
        */

    }

    public func get_most_popular_class_in_major(major: String): String {
        /*
        get the class with the highest enrollment in the major.
        :return a string of the most popular class in this major
        >>> registration_system = ClassRegistrationSystem()
        >>> registration_system.students = ArrayList<HashMap<String, String>>([HashMap<String, String>([("name", "John"), ("major", "Computer Science")]), HashMap<String, String>([("name", "Bob"), ("major", "Computer Science")]), HashMap<String, String>([("name", "Alice"), ("major", "Computer Science")])])
        >>> registration_system.students_registration_classes = HashMap<String, ArrayList<String>>([("John", ArrayList<String>(["Algorithms", "Data Structures"])), ("Bob", ArrayList<String>(["Operating Systems", "Data Structures", "Algorithms"]))])
        >>> registration_system.get_most_popular_class_in_major("Computer Science")
        "Data Structures"
        */

    }
}
