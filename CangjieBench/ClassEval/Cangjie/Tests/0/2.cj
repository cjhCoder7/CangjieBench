func test_get_jwt_user_1() {
    let agf = AccessGatewayFilter()
    let user = HashMap<String, Any>([('name', 'user1')])
    let jwt = 'user1' + DateTime.now().format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let request = HashMap<String, Any>([('headers', HashMap<String, Any>([('Authorization', Authorization)]))])
    let res = agf.get_jwt_user(request)
    if ((res ?? HashMap<String, Any>()).size == 0) {
        throw Exception("Test failed!")
    }
}

func test_get_jwt_user_2() {
    let agf = AccessGatewayFilter()
    let user = HashMap<String, Any>([('name', 'user2')])
    let jwt = 'user2' + DateTime.now().format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let request = HashMap<String, Any>([('headers', HashMap<String, Any>([('Authorization', Authorization)]))])
    let res = agf.get_jwt_user(request)
    if ((res ?? HashMap<String, Any>()).size == 0) {
        throw Exception("Test failed!")
    }
}

func test_get_jwt_user_3() {
    let agf = AccessGatewayFilter()
    let user = HashMap<String, Any>([('name', 'user3')])
    let jwt = 'user3' + DateTime.now().format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let request = HashMap<String, Any>([('headers', HashMap<String, Any>([('Authorization', Authorization)]))])
    let res = agf.get_jwt_user(request)
    if ((res ?? HashMap<String, Any>()).size == 0) {
        throw Exception("Test failed!")
    }
}

func test_get_jwt_user_4() {
    let agf = AccessGatewayFilter()
    let user = HashMap<String, Any>([('name', 'user4')])
    let jwt = 'user4' + DateTime.now().format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let request = HashMap<String, Any>([('headers', HashMap<String, Any>([('Authorization', Authorization)]))])
    let res = agf.get_jwt_user(request)
    if ((res ?? HashMap<String, Any>()).size == 0) {
        throw Exception("Test failed!")
    }
}

func test_get_jwt_user_5() {
    let agf = AccessGatewayFilter()
    let user = HashMap<String, Any>([('name', 'user1')])
    let jwt = 'user1' + DateTime.now().addDays(-5).format("yyyy-MM-dd")
    let Authorization = HashMap<String, Any>([('user', user), ('jwt', jwt)])
    let request = HashMap<String, Any>([('headers', HashMap<String, Any>([('Authorization', Authorization)]))])
    let res = agf.get_jwt_user(request)
    if ((res ?? HashMap<String, Any>()).size != 0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_jwt_user_1()
    test_get_jwt_user_2()
    test_get_jwt_user_3()
    test_get_jwt_user_4()
    test_get_jwt_user_5()
}