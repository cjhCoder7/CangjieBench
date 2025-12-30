func test_get_octets_1() {
    let ipaddress = IPAddress("10.10.10.10")
    let result = ipaddress.get_octets()
    let expected = ArrayList<String>(["10", "10", "10", "10"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_octets_2() {
    let ipaddress = IPAddress("a.10.10.10")
    let result = ipaddress.get_octets()
    let expected = ArrayList<String>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_octets_3() {
    let ipaddress = IPAddress("-1.10.10.10")
    let result = ipaddress.get_octets()
    let expected = ArrayList<String>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_octets_4() {
    let ipaddress = IPAddress("300.10.10.10")
    let result = ipaddress.get_octets()
    let expected = ArrayList<String>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_octets_5() {
    let ipaddress = IPAddress(".10.10.10")
    let result = ipaddress.get_octets()
    let expected = ArrayList<String>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_octets_1()
    test_get_octets_2()
    test_get_octets_3()
    test_get_octets_4()
    test_get_octets_5()
}