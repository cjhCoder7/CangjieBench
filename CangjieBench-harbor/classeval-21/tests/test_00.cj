import std.collection.ArrayList
import std.time.DateTime

func test_add_course_1() {
    let classroom = Classroom(1)
    let course = Course('math', '2023/09/01 09:00', '2023/09/01 11:00')
    classroom.add_course(course)
    if (!classroom.courses.contains(course)) {
        throw Exception("Test failed!")
    }
}

func test_add_course_2() {
    let classroom = Classroom(1)
    let course = Course('Chinese', '2023/09/01 10:00', '2023/09/01 11:00')
    classroom.add_course(course)
    if (!classroom.courses.contains(course)) {
        throw Exception("Test failed!")
    }
}

func test_add_course_3() {
    let classroom = Classroom(1)
    let course = Course('English', '2023/09/01 11:00', '2023/09/01 12:00')
    classroom.add_course(course)
    if (!classroom.courses.contains(course)) {
        throw Exception("Test failed!")
    }
}

func test_add_course_4() {
    let classroom = Classroom(1)
    let course = Course('Art', '2023/09/01 14:00', '2023/09/01 15:00')
    classroom.add_course(course)
    if (!classroom.courses.contains(course)) {
        throw Exception("Test failed!")
    }
}

func test_add_course_5() {
    let classroom = Classroom(1)
    let course = Course('P.E.', '2023/09/01 15:00', '2023/09/01 16:00')
    classroom.add_course(course)
    if (!classroom.courses.contains(course)) {
        throw Exception("Test failed!")
    }
}

func test_add_course_6() {
    let classroom = Classroom(1)
    let course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(course)
    classroom.add_course(course)
    if (!classroom.courses.contains(course)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_course_1()
    test_add_course_2()
    test_add_course_3()
    test_add_course_4()
    test_add_course_5()
    test_add_course_6()
}
