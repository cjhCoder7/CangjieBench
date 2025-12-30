func test_delitem_1() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__setitem__('last_name', 'Doe')
    camelize_map.__delitem__('first_name')
    if ((camelize_map.__getitem__('last_name') as String) != 'Doe') {
        throw Exception('Test failed!')
    }
}

func test_delitem_2() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__delitem__('first_name')
    if (camelize_map._data.contains((camelize_map._convert_key('first_name') as String) ?? "")) {
        throw Exception('Test failed!')
    }
}

func test_delitem_3() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__delitem__('first_Name')
    if (camelize_map._data.contains((camelize_map._convert_key('first_Name') as String) ?? "")) {
        throw Exception('Test failed!')
    }
}

func test_delitem_4() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__delitem__('firstName')
    if (camelize_map._data.contains((camelize_map._convert_key('firstName') as String) ?? "")) {
        throw Exception('Test failed!')
    }
}

func test_delitem_5() {
    let camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', '')
    camelize_map.__delitem__('first_name')
    if (camelize_map._data.contains((camelize_map._convert_key('first_name') as String) ?? "")) {
        throw Exception('Test failed!')
    }
}

main() {
    test_delitem_1()
    test_delitem_2()
    test_delitem_3()
    test_delitem_4()
    test_delitem_5()
}