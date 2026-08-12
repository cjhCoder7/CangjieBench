import std.collection.HashMap
import std.collection.ArrayList

func test_get_course_average_1() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 80)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 90)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students["Charlie"].cources.add("Physics", 80)
    let res = assessment_system.get_course_average("Physics")
    if ((res ?? 0.0) != 85.0) {
        throw Exception("Test failed!")
    }
}

func test_get_course_average_2() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 80)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 85)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students["Charlie"].cources.add("Physics", -1)
    let res = assessment_system.get_course_average("Physics")
    if ((res ?? 0.0) != 85.0) {
        throw Exception("Test failed!")
    }
}

func test_get_course_average_3() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 80)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 85)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students["Charlie"].cources.add("Physics", 80)
    let res = assessment_system.get_course_average("Computer")
    if (res != None) {
        throw Exception("Test failed!")
    }
}

func test_get_course_average_4() {
    let assessment_system = AssessmentSystem()
    let res = assessment_system.get_course_average("Computer")
    if (res != None) {
        throw Exception("Test failed!")
    }
}

func test_get_course_average_5() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 80)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 85)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students["Charlie"].cources.add("Physics", 80)
    let res = assessment_system.get_course_average("Mathematics")
    if ((res ?? 0.0) != 90.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_course_average_1()
    test_get_course_average_2()
    test_get_course_average_3()
    test_get_course_average_4()
    test_get_course_average_5()
}
