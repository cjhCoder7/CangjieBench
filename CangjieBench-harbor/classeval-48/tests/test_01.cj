import std.net.IPAddress
import std.posix.gethostname

func test_is_valid_ipv6_1() {
    let result = IpUtil.is_valid_ipv6("2001:0db8:85a3:0000:0000:8a2e:0370:7334")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_ipv6_2() {
    let result = IpUtil.is_valid_ipv6("2001:0db8:85a3:::8a2e:0370:7334")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_ipv6_3() {
    let result = IpUtil.is_valid_ipv6("2001:0db8:85a3:2001:llll:8a2e:0370:7334")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_ipv6_4() {
    let result = IpUtil.is_valid_ipv6("2001:0db8:85a3:llll:llll:8a2e:0370:7334")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_ipv6_5() {
    let result = IpUtil.is_valid_ipv6("2001:0db8:85a3::llll:8a2e:0370:7334")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_valid_ipv6_1()
    test_is_valid_ipv6_2()
    test_is_valid_ipv6_3()
    test_is_valid_ipv6_4()
    test_is_valid_ipv6_5()
}
