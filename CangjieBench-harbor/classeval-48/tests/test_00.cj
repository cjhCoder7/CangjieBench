import std.net.IPAddress
import std.posix.gethostname

func test_is_valid_ipv4_1() {
    let result = IpUtil.is_valid_ipv4("192.168.0.123")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_ipv4_2() {
    let result = IpUtil.is_valid_ipv4("10.10.10.10")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_ipv4_3() {
    let result = IpUtil.is_valid_ipv4("0.0.0.0")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_ipv4_4() {
    let result = IpUtil.is_valid_ipv4("abc.168.0.123")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_is_valid_ipv4_5() {
    let result = IpUtil.is_valid_ipv4("256.0.0.0")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_valid_ipv4_1()
    test_is_valid_ipv4_2()
    test_is_valid_ipv4_3()
    test_is_valid_ipv4_4()
    test_is_valid_ipv4_5()
}
