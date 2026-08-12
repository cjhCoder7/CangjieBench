import std.collection.HashMap
import std.collection.ArrayList

func test_main() {
    let system = AssessmentSystem()
    system.add_student("student 1", 3, "SE")
    system.add_student("student 2", 2, "SE")
    let expected_students = HashMap<String, Student>()
    expected_students.add("student 1", Student("student 1", 3, "SE"))
    expected_students.add("student 2", Student("student 2", 2, "SE"))
    if (system.students != expected_students) {
        throw Exception("Test failed!")
    }
    
    system.add_course_score("student 1", "course 1", 86)
    system.add_course_score("student 2", "course 1", 59)
    system.add_course_score("student 1", "course 2", 78)
    system.add_course_score("student 2", "course 2", 90)
    
    if (system.students["student 1"].cources["course 1"] != 86) {
        throw Exception("Test failed!")
    }
    if (system.students["student 1"].cources["course 2"] != 78) {
        throw Exception("Test failed!")
    }
    if (system.students["student 2"].cources["course 1"] != 59) {
        throw Exception("Test failed!")
    }
    if (system.students["student 2"].cources["course 2"] != 90) {
        throw Exception("Test failed!")
    }
    
    let fail_students = system.get_all_students_with_fail_course()
    let expected_fail_students = ArrayList<String>(["student 2"])
    if (fail_students != expected_fail_students) {
        throw Exception("Test failed!")
    }
    
    let course_avg_1 = system.get_course_average("course 1")
    if ((course_avg_1 ?? 0.0) != 72.5) {
        throw Exception("Test failed!")
    }
    
    let course_avg_2 = system.get_course_average("course 2")
    if ((course_avg_2 ?? 0.0) != 84.0) {
        throw Exception("Test failed!")
    }
    
    let gpa_1 = system.get_gpa("student 1")
    if (gpa_1 != 82.0) {
        throw Exception("Test failed!")
    }
    
    let gpa_2 = system.get_gpa("student 2")
    if (gpa_2 != 74.5) {
        throw Exception("Test failed!")
    }
    
    let top_student = system.get_top_student()
    if (top_student != "student 1") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
