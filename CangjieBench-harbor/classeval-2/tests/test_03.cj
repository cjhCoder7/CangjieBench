import std.collection.*
import std.reflect.*
import std.convert.*

func test_convert_type_1() {
    let parser = ArgumentParser()

    parser.types.add("age", TypeInfo.of<Int64>())
    let result = parser.convert_type("age", "10")
    if ((result as Int64) != 10) {
        throw Exception("Test failed!")
    }
}

func test_convert_type_2() {
    let parser = ArgumentParser()

    parser.types.add("age", TypeInfo.of<Int64>())
    let result = parser.convert_type("age", "twenty-five")
    if ((result as String) != "twenty-five") {
        throw Exception("Test failed!")
    }
}

func test_convert_type_3() {
    let parser = ArgumentParser()

    parser.types.add("age", TypeInfo.of<Int64>())
    let result = parser.convert_type("age", "25")
    if ((result as Int64) != 25) {
        throw Exception("Test failed!")
    }
}

func test_convert_type_4() {
    let parser = ArgumentParser()

    parser.types.add("age", TypeInfo.of<Int64>())
    parser.types.add("verbose", TypeInfo.of<Bool>())
    let result = parser.convert_type("verbose", "true")
    if ((result as Bool) != true) {
        throw Exception("Test failed!")
    }
}

func test_convert_type_5() {
    let parser = ArgumentParser()

    parser.types.add("age", TypeInfo.of<Int64>())
    parser.types.add("verbose", TypeInfo.of<Bool>())
    let result = parser.convert_type("verbose", "false")
    if ((result as Bool) != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_convert_type_1()
    test_convert_type_2()
    test_convert_type_3()
    test_convert_type_4()
    test_convert_type_5()
}
