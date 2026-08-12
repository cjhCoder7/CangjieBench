import std.collection.HashMap
import std.collection.ArrayList

func test_get_all_students_with_fail_course() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 80)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 50)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students.add("David", Student("David", 1, "Physics"))
    assessment_system.students["David"].cources.add("Physics", 60)
    assessment_system.students.add("Eve", Student("Eve", 3, "Mathematics"))
    assessment_system.students["Eve"].cources.add("Mathematics", 90)
    let res = assessment_system.get_all_students_with_fail_course()
    let expected = ArrayList<String>(["Bob"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_all_students_with_fail_course_2() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 80)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 70)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students.add("David", Student("David", 1, "Physics"))
    assessment_system.students["David"].cources.add("Physics", 70)
    assessment_system.students.add("Eve", Student("Eve", 3, "Mathematics"))
    assessment_system.students["Eve"].cources.add("Mathematics", 90)
    let res = assessment_system.get_all_students_with_fail_course()
    let expected = ArrayList<String>()
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_all_students_with_fail_course_3() {
    let assessment_system = AssessmentSystem()
    let res = assessment_system.get_all_students_with_fail_course()
    let expected = ArrayList<String>()
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_all_students_with_fail_course_4() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    let res = assessment_system.get_all_students_with_fail_course()
    let expected = ArrayList<String>()
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_all_students_with_fail_course_5() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.students["Alice"].cources.add("Mathematics", 90)
    assessment_system.students["Alice"].cources.add("Science", 50)
    assessment_system.students.add("Bob", Student("Bob", 4, "Physics"))
    assessment_system.students["Bob"].cources.add("Physics", 50)
    assessment_system.students.add("Charlie", Student("Charlie", 2, "Chemistry"))
    assessment_system.students["Charlie"].cources.add("Chemistry", 70)
    assessment_system.students.add("David", Student("David", 1, "Physics"))
    assessment_system.students["David"].cources.add("Physics", 70)
    assessment_system.students.add("Eve", Student("Eve", 3, "Mathematics"))
    assessment_system.students["Eve"].cources.add("Mathematics", 90)
    let res = assessment_system.get_all_students_with_fail_course()
    let expected = ArrayList<String>(["Alice", "Bob"])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_all_students_with_fail_course()
    test_get_all_students_with_fail_course_2()
    test_get_all_students_with_fail_course_3()
    test_get_all_students_with_fail_course_4()
    test_get_all_students_with_fail_course_5()
}
