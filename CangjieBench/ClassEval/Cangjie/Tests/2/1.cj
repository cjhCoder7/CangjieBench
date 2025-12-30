func test_get_argument_1() {
    let parser = ArgumentParser()

    parser.arguments.add("name", "John")
    let result = parser.get_argument("name")
    if ((result as String) != "John") {
        throw Exception("Test failed!")
    }
}

func test_get_argument_2() {
    let parser = ArgumentParser()

    parser.arguments.add("name", "John")
    parser.arguments.add("age", 25)
    let result = parser.get_argument("age")
    if ((result as Int64) != 25) {
        throw Exception("Test failed!")
    }
}

func test_get_argument_3() {
    let parser = ArgumentParser()

    parser.arguments.add("name", "John")
    parser.arguments.add("age", 25)
    parser.arguments.add("verbose", true)
    let result = parser.get_argument("verbose")
    if ((result as Bool) != true) {
        throw Exception("Test failed!")
    }
}

func test_get_argument_4() {
    let parser = ArgumentParser()

    parser.arguments.add("name", "John")
    parser.arguments.add("age", 25)
    parser.arguments.add("verbose", true)
    parser.arguments.add("d", true)
    let result = parser.get_argument("d")
    if ((result as Bool) != true) {
        throw Exception("Test failed!")
    }
}

func test_get_argument_5() {
    let parser = ArgumentParser()

    parser.arguments.add("name", "John")
    parser.arguments.add("age", 25)
    parser.arguments.add("verbose", true)
    parser.arguments.add("d", true)
    parser.arguments.add("option", "value")
    let result = parser.get_argument("option")
    if ((result as String) != "value") {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_argument_1()
    test_get_argument_2()
    test_get_argument_3()
    test_get_argument_4()
    test_get_argument_5()
}