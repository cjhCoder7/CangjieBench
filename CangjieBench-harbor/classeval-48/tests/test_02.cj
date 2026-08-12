import std.net.IPAddress
import std.posix.gethostname

func test_get_hostname_1() {
    let result = IpUtil.get_hostname("110.242.68.3")
    if (result != None) {
        throw Exception("Test failed!")
    }
}

func test_get_hostname_2() {
    let result = IpUtil.get_hostname("10.0.0.1")
    if (result != None) {
        throw Exception("Test failed!")
    }
}

func test_get_hostname_3() {
    let result = IpUtil.get_hostname("0.0.0.0")
    let hostname = gethostname()
    if (result != hostname) {
        throw Exception("Test failed!")
    }
}

func test_get_hostname_4() {
    let result = IpUtil.get_hostname("0.0.0.1")
    if (result != None) {
        throw Exception("Test failed!")
    }
}

func test_get_hostname_5() {
    let result = IpUtil.get_hostname("0.0.0.2")
    if (result != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_hostname_1()
    test_get_hostname_2()
    test_get_hostname_3()
    test_get_hostname_4()
    test_get_hostname_5()
}
