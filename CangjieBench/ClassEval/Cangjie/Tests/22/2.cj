func test_get_students_by_major() {
    let registration_system = ClassRegistrationSystem()
    var student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    var student2 = HashMap<String, String>()
    student2["name"] = "Bob"
    student2["major"] = "Computer Science"
    registration_system.students = ArrayList<HashMap<String, String>>([student1, student2])

    let cs_students = registration_system.get_students_by_major("Computer Science")

    let expected = ArrayList<String>(["John", "Bob"])
    if (cs_students != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_students_by_major2() {
    let registration_system = ClassRegistrationSystem()
    var student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    var student2 = HashMap<String, String>()
    student2["name"] = "Bob"
    student2["major"] = "Computer Science"
    registration_system.students = ArrayList<HashMap<String, String>>([student1, student2])

    let cs_students = registration_system.get_students_by_major("Computer Science")
    let math_students = registration_system.get_students_by_major("Mathematics")

    let expected_cs = ArrayList<String>(["John", "Bob"])
    let expected_math = ArrayList<String>()
    if (cs_students != expected_cs || math_students != expected_math) {
        throw Exception("Test failed!")
    }
}

func test_get_students_by_major3() {
    let registration_system = ClassRegistrationSystem()
    var student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    var student2 = HashMap<String, String>()
    student2["name"] = "Bob"
    student2["major"] = "Computer Science"
    var student3 = HashMap<String, String>()
    student3["name"] = "Alice"
    student3["major"] = "Mathematics"
    registration_system.students = ArrayList<HashMap<String, String>>([student1, student2, student3])

    let cs_students = registration_system.get_students_by_major("Computer Science")
    let math_students = registration_system.get_students_by_major("Mathematics")

    let expected_cs = ArrayList<String>(["John", "Bob"])
    let expected_math = ArrayList<String>(["Alice"])
    if (cs_students != expected_cs || math_students != expected_math) {
        throw Exception("Test failed!")
    }
}

func test_get_students_by_major4() {
    let registration_system = ClassRegistrationSystem()
    var student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    var student2 = HashMap<String, String>()
    student2["name"] = "Bob"
    student2["major"] = "Computer Science"
    var student3 = HashMap<String, String>()
    student3["name"] = "Alice"
    student3["major"] = "Mathematics"
    var student4 = HashMap<String, String>()
    student4["name"] = "Tom"
    student4["major"] = "Mathematics"
    var student5 = HashMap<String, String>()
    student5["name"] = "Jerry"
    student5["major"] = "Mathematics"
    registration_system.students = ArrayList<HashMap<String, String>>([student1, student2, student3, student4, student5])

    let cs_students = registration_system.get_students_by_major("Computer Science")
    let math_students = registration_system.get_students_by_major("Mathematics")

    let expected_cs = ArrayList<String>(["John", "Bob"])
    let expected_math = ArrayList<String>(["Alice", "Tom", "Jerry"])
    if (cs_students != expected_cs || math_students != expected_math) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_students_by_major()
    test_get_students_by_major2()
    test_get_students_by_major3()
    test_get_students_by_major4()
}