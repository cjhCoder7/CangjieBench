import std.convert.Parsable
import std.convert.Formattable
import std.collection.ArrayList

func test_is_valid_1() {
    let ipaddress = IPAddress("10.10.10.10")
    if (ipaddress.is_valid() != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_2() {
    let ipaddress = IPAddress("-1.10.10.10")
    if (ipaddress.is_valid() != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_3() {
    let ipaddress = IPAddress("10.10.10")
    if (ipaddress.is_valid() != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_4() {
    let ipaddress = IPAddress("a.10.10.10")
    if (ipaddress.is_valid() != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_5() {
    let ipaddress = IPAddress("300.10.10.10")
    if (ipaddress.is_valid() != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_valid_1()
    test_is_valid_2()
    test_is_valid_3()
    test_is_valid_4()
    test_is_valid_5()
}
