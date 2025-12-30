func test_all_not_signed_in_1() {
    let signin_system = SignInSystem()
    signin_system.add_user("user1")
    signin_system.sign_in("user1")
    let result = signin_system.all_not_signed_in()
    let expected = ArrayList<String>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_all_not_signed_in_2() {
    let signin_system = SignInSystem()
    signin_system.add_user("user1")
    signin_system.add_user("user2")
    let result = signin_system.all_not_signed_in()
    let expected = ArrayList<String>(["user1", "user2"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_all_not_signed_in_3() {
    let signin_system = SignInSystem()
    signin_system.add_user("aaa")
    signin_system.sign_in("aaa")
    let result = signin_system.all_not_signed_in()
    let expected = ArrayList<String>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_all_not_signed_in_4() {
    let signin_system = SignInSystem()
    signin_system.add_user("user1")
    signin_system.add_user("aaa")
    signin_system.sign_in("user1")
    let result = signin_system.all_not_signed_in()
    let expected = ArrayList<String>(["aaa"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_all_not_signed_in_5() {
    let signin_system = SignInSystem()
    let result = signin_system.all_not_signed_in()
    let expected = ArrayList<String>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_all_not_signed_in_1()
    test_all_not_signed_in_2()
    test_all_not_signed_in_3()
    test_all_not_signed_in_4()
    test_all_not_signed_in_5()
}