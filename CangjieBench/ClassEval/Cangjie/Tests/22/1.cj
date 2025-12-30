func test_register_class() {
    let registration_system = ClassRegistrationSystem()
    let result = registration_system.register_class("John", "CS101")
    let expected = ArrayList<String>(["CS101"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_register_class2() {
    let registration_system = ClassRegistrationSystem()
    registration_system.register_class("John", "CS101")
    registration_system.register_class("John", "CS102")
    let result = registration_system.register_class("John", "CS103")
    let expected = ArrayList<String>(["CS101", "CS102", "CS103"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_register_class3() {
    let registration_system = ClassRegistrationSystem()
    registration_system.register_class("John", "CS101")
    registration_system.register_class("Tom", "CS102")
    let result = registration_system.register_class("John", "CS103")
    let expected = ArrayList<String>(["CS101", "CS103"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_register_class()
    test_register_class2()
    test_register_class3()
}