func test_get_most_popular_class_in_major() {
    let registration_system = ClassRegistrationSystem()
    var student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    var student2 = HashMap<String, String>()
    student2["name"] = "Bob"
    student2["major"] = "Computer Science"
    var student3 = HashMap<String, String>()
    student3["name"] = "Alice"
    student3["major"] = "Computer Science"
    registration_system.students = ArrayList<HashMap<String, String>>([student1, student2, student3])

    var john_classes = ArrayList<String>(["Algorithms", "Data Structures"])
    var bob_classes = ArrayList<String>(["Operating Systems", "Data Structures", "Algorithms"])
    var alice_classes = ArrayList<String>(["Data Structures", "Operating Systems", "Calculus"])
    registration_system.students_registration_classes = HashMap<String, ArrayList<String>>()
    registration_system.students_registration_classes["John"] = john_classes
    registration_system.students_registration_classes["Bob"] = bob_classes
    registration_system.students_registration_classes["Alice"] = alice_classes

    let cs_most_popular_class = registration_system.get_most_popular_class_in_major("Computer Science")

    if (cs_most_popular_class != "Data Structures") {
        throw Exception("Test failed!")
    }
}

func test_get_most_popular_class_in_major2() {
    let registration_system = ClassRegistrationSystem()
    var student1 = HashMap<String, String>()
    student1["name"] = "John"
    student1["major"] = "Computer Science"
    var student2 = HashMap<String, String>()
    student2["name"] = "Bob"
    student2["major"] = "Computer Science"
    var student3 = HashMap<String, String>()
    student3["name"] = "Alice"
    student3["major"] = "Computer Science"
    var student4 = HashMap<String, String>()
    student4["name"] = "Tom"
    student4["major"] = "Mathematics"
    var student5 = HashMap<String, String>()
    student5["name"] = "Jerry"
    student5["major"] = "Mathematics"
    registration_system.students = ArrayList<HashMap<String, String>>([student1, student2, student3, student4, student5])

    var john_classes = ArrayList<String>(["Algorithms", "Data Structures"])
    var bob_classes = ArrayList<String>(["Data Structures", "Algorithms", "Operating Systems"])
    var alice_classes = ArrayList<String>(["Data Structures", "Operating Systems", "Calculus"])
    var tom_classes = ArrayList<String>(["Calculus", "Linear Algebra"])
    var jerry_classes = ArrayList<String>(["Linear Algebra", "Statistics"])
    registration_system.students_registration_classes = HashMap<String, ArrayList<String>>()
    registration_system.students_registration_classes["John"] = john_classes
    registration_system.students_registration_classes["Bob"] = bob_classes
    registration_system.students_registration_classes["Alice"] = alice_classes
    registration_system.students_registration_classes["Tom"] = tom_classes
    registration_system.students_registration_classes["Jerry"] = jerry_classes

    let cs_most_popular_class = registration_system.get_most_popular_class_in_major("Computer Science")
    let math_most_popular_class = registration_system.get_most_popular_class_in_major("Mathematics")
    
    if (cs_most_popular_class != "Data Structures" || math_most_popular_class != "Linear Algebra") {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_most_popular_class_in_major()
    test_get_most_popular_class_in_major2()
}