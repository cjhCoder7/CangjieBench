import std.collection.HashMap

func test_to_camel_case_1() {
    if (CamelCaseMap._to_camel_case('aaa_bbb') != 'aaaBbb') {
        throw Exception('Test failed!')
    }
}

func test_to_camel_case_2() {
    if (CamelCaseMap._to_camel_case('first_name') != 'firstName') {
        throw Exception('Test failed!')
    }
}

func test_to_camel_case_3() {
    if (CamelCaseMap._to_camel_case('last_name') != 'lastName') {
        throw Exception('Test failed!')
    }
}

func test_to_camel_case_4() {
    if (CamelCaseMap._to_camel_case('ccc_ddd') != 'cccDdd') {
        throw Exception('Test failed!')
    }
}

func test_to_camel_case_5() {
    if (CamelCaseMap._to_camel_case('eee_fff') != 'eeeFff') {
        throw Exception('Test failed!')
    }
}

main() {
    test_to_camel_case_1()
    test_to_camel_case_2()
    test_to_camel_case_3()
    test_to_camel_case_4()
    test_to_camel_case_5()
}
