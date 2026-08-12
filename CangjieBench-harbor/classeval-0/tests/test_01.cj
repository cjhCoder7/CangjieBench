import std.collection.HashMap
import std.time.DateTime

func test_is_start_with_1() {
    let agf = AccessGatewayFilter()
    let request_uri = '/api/data'
    let res = agf.is_start_with(request_uri)
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_is_start_with_2() {
    let agf = AccessGatewayFilter()
    let request_uri = '/admin/settings'
    let res = agf.is_start_with(request_uri)
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_start_with_3() {
    let agf = AccessGatewayFilter()
    let request_uri = '/login/data'
    let res = agf.is_start_with(request_uri)
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_is_start_with_4() {
    let agf = AccessGatewayFilter()
    let request_uri = '/abc/data'
    let res = agf.is_start_with(request_uri)
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_is_start_with_5() {
    let agf = AccessGatewayFilter()
    let request_uri = '/def/data'
    let res = agf.is_start_with(request_uri)
    if (res != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_start_with_1()
    test_is_start_with_2()
    test_is_start_with_3()
    test_is_start_with_4()
    test_is_start_with_5()
}
