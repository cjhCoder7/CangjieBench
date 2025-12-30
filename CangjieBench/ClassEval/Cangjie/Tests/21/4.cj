func test_main() {
    let classroom = Classroom(1)
    let course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(course)
    if (!classroom.courses.contains(course)) {
        throw Exception("Test failed!")
    }

    classroom.remove_course(course)
    if (classroom.courses.contains(course)) {
        throw Exception("Test failed!")
    }

    classroom.add_course(course)
    if (!classroom.courses.contains(course)) {
        throw Exception("Test failed!")
    }
    let check_time = '2023/09/01 09:30'
    let result = classroom.is_free_at(check_time)
    if (result) {
        throw Exception("Test failed!")
    }

    let new_course = Course('SE', '2023/09/01 09:30', '2023/09/01 10:30')
    let result2 = classroom.check_course_conflict(new_course)
    if (result2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}