import std.collection.ArrayList
import std.time.DateTime

func test_is_free_at_1() {
    let classroom = Classroom(1)
    let course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(course)
    let check_time = '2023/09/01 11:00'
    let result = classroom.is_free_at(check_time)
    if (!result) {
        throw Exception("Test failed!")
    }
}

func test_is_free_at_2() {
    let classroom = Classroom(1)
    let course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(course)
    let check_time = '2023/09/01 09:30'
    let result = classroom.is_free_at(check_time)
    if (result) {
        throw Exception("Test failed!")
    }
}

func test_is_free_at_3() {
    let classroom = Classroom(1)
    let course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(course)
    let check_time = '2023/09/01 12:00'
    let result = classroom.is_free_at(check_time)
    if (!result) {
        throw Exception("Test failed!")
    }
}

func test_is_free_at_4() {
    let classroom = Classroom(1)
    let course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(course)
    let check_time = '2023/09/01 14:00'
    let result = classroom.is_free_at(check_time)
    if (!result) {
        throw Exception("Test failed!")
    }
}

func test_is_free_at_5() {
    let classroom = Classroom(1)
    let course = Course('math', '2023/09/01 09:00', '2023/09/01 10:00')
    classroom.add_course(course)
    let check_time = '2023/09/01 09:40'
    let result = classroom.is_free_at(check_time)
    if (result) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_free_at_1()
    test_is_free_at_2()
    test_is_free_at_3()
    test_is_free_at_4()
    test_is_free_at_5()
}
