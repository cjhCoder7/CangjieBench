import std.collection.ArrayList
import std.collection.HashMap

func test() {
    let registration_system = ClassRegistrationSystem()
    let student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    let student2 = HashMap<String, String>()
    student2["name"] = "Bob"
    student2["major"] = "Computer Science"
    let student3 = HashMap<String, String>()
    student3["name"] = "Alice"
    student3["major"] = "Mathematics"
    let student4 = HashMap<String, String>()
    student4["name"] = "Tom"
    student4["major"] = "Mathematics"
    registration_system.register_student(student1)
    registration_system.register_student(student2)
    registration_system.register_student(student3)
    registration_system.register_student(student4)
    registration_system.register_class("John", "Algorithms")
    registration_system.register_class("John", "Data Structures")
    registration_system.register_class("Bob", "Operating Systems")
    registration_system.register_class("Bob", "Data Structures")
    
    let result1 = registration_system.get_students_by_major("Computer Science")
    let expected1 = ArrayList<String>(["John", "Bob"])
    if (result1 != expected1) {
        throw Exception("Test failed!")
    }
    
    let result2 = registration_system.get_students_by_major("Mathematics")
    let expected2 = ArrayList<String>(["Alice", "Tom"])
    if (result2 != expected2) {
        throw Exception("Test failed!")
    }
    
    let result3 = registration_system.get_all_major()
    let expected3 = ArrayList<String>(["Computer Science", "Mathematics"])
    if (result3 != expected3) {
        throw Exception("Test failed!")
    }
    
    let result4 = registration_system.get_most_popular_class_in_major("Computer Science")
    if (result4 != "Data Structures") {
        throw Exception("Test failed!")
    }
}

main() {
    test()
}
