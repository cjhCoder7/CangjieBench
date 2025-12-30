func test_IpUtil() {
    let result1 = IpUtil.is_valid_ipv4("192.168.0.123")
    if (result1 != true) {
        throw Exception("Test failed!")
    }

    let result2 = IpUtil.is_valid_ipv6("2001:0db8:85a3:0000:0000:8a2e:0370:7334")
    if (result2 != true) {
        throw Exception("Test failed!")
    }

    let result3 = IpUtil.get_hostname("110.242.68.3")
    if (result3 != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_IpUtil()
}