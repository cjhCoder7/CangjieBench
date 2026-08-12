import std.collection.HashMap

func test_setitem_1() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__setitem__('first_name', 'newname')
    if ((camelize_map.__getitem__('first_name') as String) != 'newname') {
        throw Exception('Test failed!')
    }
}

func test_setitem_2() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__setitem__('first_name', 'John')
    if ((camelize_map.__getitem__('first_name') as String) != 'John') {
        throw Exception('Test failed!')
    }
}

func test_setitem_3() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__setitem__('first_Name', 'newname')
    if ((camelize_map.__getitem__('first_name') as String) != 'newname') {
        throw Exception('Test failed!')
    }
}

func test_setitem_4() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__setitem__('firstName', 'newname')
    if ((camelize_map.__getitem__('first_name') as String) != 'newname') {
        throw Exception('Test failed!')
    }
}

func test_setitem_5() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__setitem__('first_name', '')
    if ((camelize_map.__getitem__('first_name') as String) != '') {
        throw Exception('Test failed!')
    }
}

main() {
    test_setitem_1()
    test_setitem_2()
    test_setitem_3()
    test_setitem_4()
    test_setitem_5()
}
