import std.collection.HashMap
import std.collection.ArrayList

func test_check_sign_in_1() {
    let signin_system = SignInSystem()
    signin_system.add_user("user1")
    signin_system.sign_in("user1")
    let result = signin_system.check_sign_in("user1")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_check_sign_in_2() {
    let signin_system = SignInSystem()
    signin_system.add_user("user1")
    let result = signin_system.check_sign_in("user1")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_check_sign_in_3() {
    let signin_system = SignInSystem()
    let result = signin_system.check_sign_in("user1")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_check_sign_in_4() {
    let signin_system = SignInSystem()
    signin_system.add_user("aaa")
    signin_system.sign_in("aaa")
    let result = signin_system.check_sign_in("aaa")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_check_sign_in_5() {
    let signin_system = SignInSystem()
    signin_system.add_user("bbb")
    signin_system.sign_in("bbb")
    let result = signin_system.check_sign_in("bbb")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_sign_in_1()
    test_check_sign_in_2()
    test_check_sign_in_3()
    test_check_sign_in_4()
    test_check_sign_in_5()
}
