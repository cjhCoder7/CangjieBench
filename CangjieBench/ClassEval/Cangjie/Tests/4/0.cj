func test_add_student() {
    let assessment_system = AssessmentSystem()
    assessment_system.add_student("Alice", 3, "Mathematics")
    let expected = HashMap<String, Student>()
    expected.add("Alice", Student("Alice", 3, "Mathematics"))
    if (assessment_system.students != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_student_2() {
    let assessment_system = AssessmentSystem()
    assessment_system.add_student("Alice", 3, "Mathematics")
    assessment_system.add_student("Bob", 2, "Science")
    let expected = HashMap<String, Student>()
    expected.add("Alice", Student("Alice", 3, "Mathematics"))
    expected.add("Bob", Student("Bob", 2, "Science"))
    if (assessment_system.students != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_student_3() {
    let assessment_system = AssessmentSystem()
    assessment_system.add_student("Alice", 3, "Mathematics")
    assessment_system.add_student("Bob", 2, "Science")
    assessment_system.add_student("Charlie", 4, "Chemistry")
    let expected = HashMap<String, Student>()
    expected.add("Alice", Student("Alice", 3, "Mathematics"))
    expected.add("Bob", Student("Bob", 2, "Science"))
    expected.add("Charlie", Student("Charlie", 4, "Chemistry"))
    if (assessment_system.students != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_student_4() {
    let assessment_system = AssessmentSystem()
    assessment_system.add_student("Alice", 3, "Mathematics")
    assessment_system.add_student("Bob", 2, "Science")
    assessment_system.add_student("Charlie", 4, "Chemistry")
    assessment_system.add_student("David", 1, "Physics")
    let expected = HashMap<String, Student>()
    expected.add("Alice", Student("Alice", 3, "Mathematics"))
    expected.add("Bob", Student("Bob", 2, "Science"))
    expected.add("Charlie", Student("Charlie", 4, "Chemistry"))
    expected.add("David", Student("David", 1, "Physics"))
    if (assessment_system.students != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_student_5() {
    let assessment_system = AssessmentSystem()
    assessment_system.add_student("Alice", 3, "Mathematics")
    assessment_system.add_student("Bob", 2, "Science")
    assessment_system.add_student("Charlie", 4, "Chemistry")
    assessment_system.add_student("David", 1, "Physics")
    assessment_system.add_student("Eve", 3, "Mathematics")
    let expected = HashMap<String, Student>()
    expected.add("Alice", Student("Alice", 3, "Mathematics"))
    expected.add("Bob", Student("Bob", 2, "Science"))
    expected.add("Charlie", Student("Charlie", 4, "Chemistry"))
    expected.add("David", Student("David", 1, "Physics"))
    expected.add("Eve", Student("Eve", 3, "Mathematics"))
    if (assessment_system.students != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_student()
    test_add_student_2()
    test_add_student_3()
    test_add_student_4()
    test_add_student_5()
}