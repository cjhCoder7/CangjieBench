func test_parse_arguments_1() {
    let parser = ArgumentParser()

    let command_str = "script --name=John --age=25"
    parser.add_argument("name")
    parser.add_argument("age", arg_type: TypeInfo.of<Int64>())

    let results = parser.parse_arguments(command_str)
    let result = results[0]
    let missing_args = results[1]

    if (result != true) {
        throw Exception("Test failed!")
    }
    if (missing_args != None) {
        throw Exception("Test failed!")
    }
    if ((parser.get_argument("name") as String) != "John") {
        throw Exception("Test failed!")
    }
    if ((parser.get_argument("age") as Int64) != 25) {
        throw Exception("Test failed!")
    }
}

func test_parse_arguments_2() {
    let parser = ArgumentParser()

    let command_str = "script --verbose -d"
    parser.add_argument("verbose", arg_type: TypeInfo.of<Bool>())
    parser.add_argument("d", arg_type: TypeInfo.of<Bool>())

    let results = parser.parse_arguments(command_str)
    let result = results[0]
    let missing_args = results[1]

    if (result != true) {
        throw Exception("Test failed!")
    }
    if (missing_args != None) {
        throw Exception("Test failed!")
    }
    if ((parser.get_argument("verbose") as Bool) != true) {
        throw Exception("Test failed!")
    }
    if ((parser.get_argument("d") as Bool) != true) {
        throw Exception("Test failed!")
    }
}

func test_parse_arguments_3() {
    let parser = ArgumentParser()

    let command_str = "script --name=John"
    parser.add_argument("name")
    parser.add_argument("age", required: true, arg_type: TypeInfo.of<Int64>())

    let results = parser.parse_arguments(command_str)
    let result = results[0]
    let missing_args = results[1]

    if (result != false) {
        throw Exception("Test failed!")
    }
    if ((missing_args ?? HashSet<String>()) != HashSet<String>(["age"])) {
        throw Exception("Test failed!")
    }
}

func test_parse_arguments_4() {
    let parser = ArgumentParser()

    let command_str = "script --name=John"
    parser.add_argument("name")
    parser.add_argument("age", required: false, arg_type: TypeInfo.of<Int64>())

    let results = parser.parse_arguments(command_str)
    let result = results[0]
    let missing_args = results[1]

    if (result != true) {
        throw Exception("Test failed!")
    }
    if (missing_args != None) {
        throw Exception("Test failed!")
    }
}

func test_parse_arguments_5() {
    let parser = ArgumentParser()

    let command_str = "script --name=John"
    parser.add_argument("name")
    parser.add_argument("age", arg_type: TypeInfo.of<Int64>())

    let results = parser.parse_arguments(command_str)
    let result = results[0]
    let missing_args = results[1]

    if (result != true) {
        throw Exception("Test failed!")
    }
    if (missing_args != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_parse_arguments_1()
    test_parse_arguments_2()
    test_parse_arguments_3()
    test_parse_arguments_4()
    test_parse_arguments_5()
}