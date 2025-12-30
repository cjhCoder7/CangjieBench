func test_add_course_score() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.add_course_score("Alice", "Math", 90)
    if (assessment_system.students["Alice"].cources["Math"] != 90) {
        throw Exception("Test failed!")
    }
}

func test_add_course_score_2() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.add_course_score("Alice", "Math", 90)
    if (assessment_system.students["Alice"].cources["Math"] != 90) {
        throw Exception("Test failed!")
    }
}

func test_add_course_score_3() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.add_course_score("Alice", "Math", 90)
    assessment_system.add_course_score("Alice", "Science", 80)
    assessment_system.add_course_score("Alice", "Math", 95)
    if (assessment_system.students["Alice"].cources["Math"] != 95) {
        throw Exception("Test failed!")
    }
    if (assessment_system.students["Alice"].cources["Science"] != 80) {
        throw Exception("Test failed!")
    }
}

func test_add_course_score_4() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.add_course_score("Alice", "Math", 90)
    assessment_system.add_course_score("Alice", "Science", 80)
    assessment_system.add_course_score("Alice", "Math", 95)
    assessment_system.add_course_score("Alice", "Science", 85)
    if (assessment_system.students["Alice"].cources["Math"] != 95) {
        throw Exception("Test failed!")
    }
    if (assessment_system.students["Alice"].cources["Science"] != 85) {
        throw Exception("Test failed!")
    }
}

func test_add_course_score_5() {
    let assessment_system = AssessmentSystem()
    assessment_system.students.add("Alice", Student("Alice", 3, "Mathematics"))
    assessment_system.add_course_score("Bob", "Math", 90)
    if (assessment_system.students["Alice"].cources.size != 0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_course_score()
    test_add_course_score_2()
    test_add_course_score_3()
    test_add_course_score_4()
    test_add_course_score_5()
}