func test_AccessGatewayFilter() {
    let agf = AccessGatewayFilter()
    let request1 = HashMap<String, Any>([('path', '/api/data'), ('method', 'GET')])
    let res1 = agf.filter(request1)
    if (res1 != true) {
        throw Exception("Test failed!")
    }

    let request_url = '/api/data'
    let res2 = agf.is_start_with(request_url)
    if (res2 != true) {
        throw Exception("Test failed!")
    }

    let user = HashMap<String, Any>([('name', 'user1')])
    let jwt = 'user1' + DateTime.now().format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let request2 = HashMap<String, Any>([('headers', HashMap<String, Any>([('Authorization', Authorization)]))])
    let res3 = agf.get_jwt_user(request2)
    if ((res3 ?? HashMap<String, Any>()).size == 0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_AccessGatewayFilter()
}