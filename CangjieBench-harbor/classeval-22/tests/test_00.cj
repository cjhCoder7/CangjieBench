import std.collection.ArrayList
import std.collection.HashMap

func test_register_student() {
    let registration_system = ClassRegistrationSystem()
    let student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    if (registration_system.register_student(student1) != 1) {
        throw Exception("Test failed!")
    }
}

func test_register_student2() {
    let registration_system = ClassRegistrationSystem()
    let student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    registration_system.register_student(student1)
    if (registration_system.register_student(student1) != 0) {
        throw Exception("Test failed!")
    }
}

func test_register_student3() {
    let registration_system = ClassRegistrationSystem()
    let student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    let student2 = HashMap<String, String>()
    student2["name"] = "Alice"
    student2["major"] = "Mathematics"
    if (registration_system.register_student(student1) != 1) {
        throw Exception("Test failed!")
    }
    if (registration_system.register_student(student2) != 1) {
        throw Exception("Test failed!")
    }
    if (registration_system.register_student(student2) != 0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_register_student()
    test_register_student2()
    test_register_student3()
}
