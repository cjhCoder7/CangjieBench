import std.collection.HashMap

func test_convert_key_1() {
    let camelize_map = CamelCaseMap()
    if ((camelize_map._convert_key('aaa_bbb') as String) != 'aaaBbb') {
        throw Exception('Test failed!')
    }
}

func test_convert_key_2() {
    let camelize_map = CamelCaseMap()
    if ((camelize_map._convert_key('first_name') as String) != 'firstName') {
        throw Exception('Test failed!')
    }
}

func test_convert_key_3() {
    let camelize_map = CamelCaseMap()
    if ((camelize_map._convert_key('last_name') as String) != 'lastName') {
        throw Exception('Test failed!')
    }
}

func test_convert_key_4() {
    let camelize_map = CamelCaseMap()
    if ((camelize_map._convert_key('ccc_ddd') as String) != 'cccDdd') {
        throw Exception('Test failed!')
    }
}

func test_convert_key_5() {
    let camelize_map = CamelCaseMap()
    if ((camelize_map._convert_key('eee_fff') as String) != 'eeeFff') {
        throw Exception('Test failed!')
    }
}

func test_convert_key_6() {
    let camelize_map = CamelCaseMap()
    if ((camelize_map._convert_key(1234) as Int64) != 1234) {
        throw Exception('Test failed!')
    }
}

main() {
    test_convert_key_1()
    test_convert_key_2()
    test_convert_key_3()
    test_convert_key_4()
    test_convert_key_5()
    test_convert_key_6()
}
