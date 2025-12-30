func test_get_all_major() {
    let registration_system = ClassRegistrationSystem()
    var student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    var student2 = HashMap<String, String>()
    student2["name"] = "Bob"
    student2["major"] = "Computer Science"
    registration_system.students = ArrayList<HashMap<String, String>>([student1, student2])

    let majors = registration_system.get_all_major()

    let expected = ArrayList<String>(["Computer Science"])
    if (majors != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_all_major2() {
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

    let majors = registration_system.get_all_major()

    let expected = ArrayList<String>(["Computer Science", "Mathematics"])
    if (majors != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_all_major3() {
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
    student5["major"] = "Physics"
    registration_system.students = ArrayList<HashMap<String, String>>([student1, student2, student3, student4, student5])

    let majors = registration_system.get_all_major()

    let expected = ArrayList<String>(["Computer Science", "Mathematics", "Physics"])
    if (majors != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_all_major()
    test_get_all_major2()
    test_get_all_major3()
}