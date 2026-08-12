import std.collection.HashMap
import std.collection.ArrayList

func test_get_gpa_1() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 80)
    let res = assessment_system.get_gpa("Alice")
    if ((res ?? 0.0) != 85.0) {
        throw Exception("Test failed!")
    }
}

func test_get_gpa_2() {
    let assessment_system = AssessmentSystem()
    let res = assessment_system.get_gpa("Alice")
    if (res != None) {
        throw Exception("Test failed!")
    }
}

func test_get_gpa_3() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    let res = assessment_system.get_gpa("Alice")
    if (res != None) {
        throw Exception("Test failed!")
    }
}

func test_get_gpa_4() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    let res = assessment_system.get_gpa("Bob")
    if (res != None) {
        throw Exception("Test failed!")
    }
}

func test_get_gpa_5() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    let res = assessment_system.get_gpa("Alice")
    if ((res ?? 0.0) != 90.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_gpa_1()
    test_get_gpa_2()
    test_get_gpa_3()
    test_get_gpa_4()
    test_get_gpa_5()
}
