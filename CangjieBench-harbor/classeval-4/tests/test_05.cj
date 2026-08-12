import std.collection.HashMap
import std.collection.ArrayList

func test_get_top_student() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 85)
    let res = assessment_system.get_top_student()
    if (res != "Alice") {
        throw Exception("Test failed!")
    }
}

func test_get_top_student_2() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 85)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students["Charlie"].cources.add("Physics", 80)
    let res = assessment_system.get_top_student()
    if (res != "Bob") {
        throw Exception("Test failed!")
    }
}

func test_get_top_student_3() {
    let assessment_system = AssessmentSystem()
    let res = assessment_system.get_top_student()
    if (res != None) {
        throw Exception("Test failed!")
    }
}

func test_get_top_student_4() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 60)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 85)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students["Charlie"].cources.add("Physics", 80)
    let res = assessment_system.get_top_student()
    if (res != "Bob") {
        throw Exception("Test failed!")
    }
}

func test_get_top_student_5() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 60)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 85)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students["Charlie"].cources.add("Physics", 80)
    assessment_system.students.add("David", Student("David", 2, "Chemistry"))
    assessment_system.students["David"].cources.add("Chemistry", 70)
    assessment_system.students["David"].cources.add("Physics", 80)
    let res = assessment_system.get_top_student()
    if (res != "Bob") {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_top_student()
    test_get_top_student_2()
    test_get_top_student_3()
    test_get_top_student_4()
    test_get_top_student_5()
}
