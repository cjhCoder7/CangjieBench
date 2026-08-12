import std.collection.HashMap

func test_CamelCaseMap() {
    var camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    if ((camelize_map.__getitem__('first_name') as String) != 'John') {
        throw Exception('Test failed!')
    }

    camelize_map = CamelCaseMap()
    camelize_map.__setitem__('first_name', 'John')
    camelize_map.__setitem__('first_name', 'newname')
    if ((camelize_map.__getitem__('first_name') as String) != 'newname') {
        throw Exception('Test failed!')
    }
}

main() {
    test_CamelCaseMap()
}
