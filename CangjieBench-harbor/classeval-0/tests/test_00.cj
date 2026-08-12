import std.collection.HashMap
import std.time.DateTime

func test_filter_1() {
    let agf = AccessGatewayFilter()
    let request = HashMap<String, Any>([('path', '/api/data'), ('method', 'GET')])
    let res = agf.filter(request)
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_filter_2() {
    let agf = AccessGatewayFilter()
    let request = HashMap<String, Any>([('path', '/login'), ('method', 'POST')])
    let res = agf.filter(request)
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_filter_3() {
    let agf = AccessGatewayFilter()
    let request = HashMap<String, Any>([('path', '/api/data'), ('method', 'GET')])
    let res = agf.filter(request)
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_filter_4() {
    let agf = AccessGatewayFilter()
    let request = HashMap<String, Any>([('path', '/api/data'), ('method', 'POST')])
    let res = agf.filter(request)
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_filter_5() {
    let agf = AccessGatewayFilter()
    let request = HashMap<String, Any>([('path', '/abc'), ('method', 'POST')])
    let user = HashMap<String, Any>([('name', 'user1'), ('level', 5), ('address', 'address1')])
    let jwt = 'user1' + DateTime.now().format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let headers = HashMap<String, Any>([('Authorization', Authorization)])
    request.add('headers', headers)
    let res = agf.filter(request)
    if (res != true) {
        throw Exception("Test failed!")
    }
}

func test_filter_6() {
    let agf = AccessGatewayFilter()
    let request = HashMap<String, Any>([('path', '/abc'), ('method', 'POST')])
    let user = HashMap<String, Any>([('name', 'user1'), ('level', 3), ('address', 'address1')])
    let jwt = 'user1' + DateTime.now().addDays(-365).format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let headers = HashMap<String, Any>([('Authorization', Authorization)])
    request.add('headers', headers)
    let res = agf.filter(request)
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_filter_7() {
    let agf = AccessGatewayFilter()
    let request = HashMap<String, Any>([('path', '/abc'), ('method', 'POST')])
    let user = HashMap<String, Any>([('name', 'user1'), ('level', 1), ('address', 'address1')])
    let jwt = 'user1' + DateTime.now().format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let headers = HashMap<String, Any>([('Authorization', Authorization)])
    request.add('headers', headers)
    let res = agf.filter(request)
    if (res != false) {
        throw Exception("Test failed!")
    }
}

func test_filter_8() {
    let agf = AccessGatewayFilter()
    let request = HashMap<String, Any>([('path', '/abc'), ('method', 'POST')])
    let user = HashMap<String, Any>([('name', 'user1'), ('level', 3), ('address', 'address1')])
    let jwt = 'user2' + DateTime.now().addDays(-365).format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let headers = HashMap<String, Any>([('Authorization', Authorization)])
    request.add('headers', headers)
    let res = agf.filter(request)
    if (res != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_filter_1()
    test_filter_2()
    test_filter_3()
    test_filter_4()
    test_filter_5()
    test_filter_6()
    test_filter_7()
    test_filter_8()
}
