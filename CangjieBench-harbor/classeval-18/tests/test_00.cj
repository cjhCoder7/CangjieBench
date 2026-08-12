import std.collection.HashMap

func test_getitem_1() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    if ((camelize_map.__getitem__("first_name") as String) != 'John') {
        throw Exception('Test failed!')
    }
}

func test_getitem_2() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('last_name', 'Doe')
    if ((camelize_map.__getitem__('last_name') as String) != 'Doe') {
        throw Exception('Test failed!')
    }
}

func test_getitem_3() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('age', 30)
    if ((camelize_map.__getitem__('age') as Int64) != 30) {
        throw Exception('Test failed!')
    }
}

func test_getitem_4() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    if ((camelize_map.__getitem__('first_Name') as String) != 'John') {
        throw Exception('Test failed!')
    }
}

func test_getitem_5() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    if ((camelize_map.__getitem__('firstName') as String) != 'John') {
        throw Exception('Test failed!')
    }
}

main() {
    test_getitem_1()
    test_getitem_2()
    test_getitem_3()
    test_getitem_4()
    test_getitem_5()
}
