func test_IPAddress() {
    let ipaddress = IPAddress("10.10.10.10")
    if (ipaddress.is_valid() != true) {
        throw Exception("Test failed!")
    }
    let result1 = ipaddress.get_octets()
    let expected1 = ArrayList<String>(["10", "10", "10", "10"])
    if (result1 != expected1) {
        throw Exception("Test failed!")
    }
    if (ipaddress.get_binary() != "00001010.00001010.00001010.00001010") {
        throw Exception("Test failed!")
    }
}

main() {
    test_IPAddress()
}