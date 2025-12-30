func test_add_user_1() {
    let signin_system = SignInSystem()
    let result = signin_system.add_user("user1")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_add_user_2() {
    let signin_system = SignInSystem()
    signin_system.add_user("user1")
    let result = signin_system.add_user("user1")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_add_user_3() {
    let signin_system = SignInSystem()
    let result = signin_system.add_user("aaa")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_add_user_4() {
    let signin_system = SignInSystem()
    let result = signin_system.add_user("bbb")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_add_user_5() {
    let signin_system = SignInSystem()
    let result = signin_system.add_user("ccc")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_user_1()
    test_add_user_2()
    test_add_user_3()
    test_add_user_4()
    test_add_user_5()
}