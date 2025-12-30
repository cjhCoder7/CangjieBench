func test_sign_in_1() {
    let signin_system = SignInSystem()
    signin_system.add_user("user1")
    let result = signin_system.sign_in("user1")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_sign_in_2() {
    let signin_system = SignInSystem()
    let result = signin_system.sign_in("user1")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_sign_in_3() {
    let signin_system = SignInSystem()
    signin_system.add_user("aaa")
    let result = signin_system.sign_in("aaa")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_sign_in_4() {
    let signin_system = SignInSystem()
    signin_system.add_user("bbb")
    let result = signin_system.sign_in("bbb")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_sign_in_5() {
    let signin_system = SignInSystem()
    let result = signin_system.sign_in("ccc")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_sign_in_1()
    test_sign_in_2()
    test_sign_in_3()
    test_sign_in_4()
    test_sign_in_5()
}