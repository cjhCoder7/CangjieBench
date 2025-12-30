func test_main() {
    let signin_system = SignInSystem()

    var result = signin_system.add_user("user1")
    result = signin_system.add_user("user2")
    if (result != true) {
        throw Exception("Test failed!")
    }

    result = signin_system.sign_in("user1")
    if (result != true) {
        throw Exception("Test failed!")
    }

    result = signin_system.check_sign_in("user1")
    if (result != true) {
        throw Exception("Test failed!")
    }

    result = signin_system.all_signed_in()
    if (result != false) {
        throw Exception("Test failed!")
    }

    let result2 = signin_system.all_not_signed_in()
    let expected = ArrayList<String>(["user2"])
    if (result2 != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}