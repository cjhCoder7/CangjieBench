import std.collection.HashMap

func test_len_1() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    if (camelize_map.__len__() != 1) {
        throw Exception('Test failed!')
    }
}

func test_len_2() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('last_name', 'Doe')
    if (camelize_map.__len__() != 1) {
        throw Exception('Test failed!')
    }
}

func test_len_3() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('age', 30)
    if (camelize_map.__len__() != 1) {
        throw Exception('Test failed!')
    }
}

func test_len_4() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__setitem__('last_Name', 'Doe')
    camelize_map.__setitem__('age', 30)
    if (camelize_map.__len__() != 3) {
        throw Exception('Test failed!')
    }
}

func test_len_5() {
    let camelize_map = CamelCaseMap()
    if (camelize_map.__len__() != 0) {
        throw Exception('Test failed!')
    }
}

main() {
    test_len_1()
    test_len_2()
    test_len_3()
    test_len_4()
    test_len_5()
}
