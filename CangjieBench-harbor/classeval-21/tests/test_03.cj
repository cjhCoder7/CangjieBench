import std.collection.ArrayList
import std.time.DateTime

func test_check_course_conflict_1() {
    let classroom = Classroom(1)
    let existing_course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(existing_course)
    let new_course = Course('SE', '2023/09/01 10:30', '2023/09/01 11:30')
    let result = classroom.check_course_conflict(new_course)
    if (!result) {
        throw Exception("Test failed!")
    }
}

func test_check_course_conflict_2() {
    let classroom = Classroom(1)
    let existing_course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(existing_course)
    let new_course = Course('SE', '2023/09/01 09:30', '2023/09/01 10:30')
    let result = classroom.check_course_conflict(new_course)
    if (result) {
        throw Exception("Test failed!")
    }
}

func test_check_course_conflict_3() {
    let classroom = Classroom(1)
    let existing_course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(existing_course)
    let new_course = Course('SE', '2023/09/01 10:00', '2023/09/01 11:30')
    let result = classroom.check_course_conflict(new_course)
    if (result) {
        throw Exception("Test failed!")
    }
}

func test_check_course_conflict_4() {
    let classroom = Classroom(1)
    let existing_course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(existing_course)
    let new_course = Course('SE', '2023/09/01 09:40', '2023/09/01 10:40')
    let result = classroom.check_course_conflict(new_course)
    if (result) {
        throw Exception("Test failed!")
    }
}

func test_check_course_conflict_5() {
    let classroom = Classroom(1)
    let existing_course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(existing_course)
    let new_course = Course('SE', '2023/09/01 14:30', '2023/09/01 15:30')
    let result = classroom.check_course_conflict(new_course)
    if (!result) {
        throw Exception("Test failed!")
    }
}

func test_check_course_conflict_6() {
    let classroom = Classroom(1)
    let existing_course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(existing_course)
    let new_course = Course('SE', '2023/09/01 08:30', '2023/09/01 09:30')
    let result = classroom.check_course_conflict(new_course)
    if (result) {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_course_conflict_1()
    test_check_course_conflict_2()
    test_check_course_conflict_3()
    test_check_course_conflict_4()
    test_check_course_conflict_5()
    test_check_course_conflict_6()
}
