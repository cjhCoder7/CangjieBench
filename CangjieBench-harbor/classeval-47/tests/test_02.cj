import std.convert.Parsable
import std.convert.Formattable
import std.collection.ArrayList

func test_get_binary_1() {
    let ipaddress = IPAddress("10.10.10.10")
    if (ipaddress.get_binary() != "00001010.00001010.00001010.00001010") {
        throw Exception("Test failed!")
    }
}

func test_get_binary_2() {
    let ipaddress = IPAddress("a.10.10.10")
    if (ipaddress.get_binary() != "") {
        throw Exception("Test failed!")
    }
}

func test_get_binary_3() {
    let ipaddress = IPAddress("-1.10.10.10")
    if (ipaddress.get_binary() != "") {
        throw Exception("Test failed!")
    }
}

func test_get_binary_4() {
    let ipaddress = IPAddress("300.10.10.10")
    if (ipaddress.get_binary() != "") {
        throw Exception("Test failed!")
    }
}

func test_get_binary_5() {
    let ipaddress = IPAddress(".10.10.10")
    if (ipaddress.get_binary() != "") {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_binary_1()
    test_get_binary_2()
    test_get_binary_3()
    test_get_binary_4()
    test_get_binary_5()
}
