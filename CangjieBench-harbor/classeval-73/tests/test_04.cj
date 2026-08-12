func test_is_alive_1() {
    let character = RPGCharacter("John", 100, 20, 10)
    if (character.is_alive() != true) {
        throw Exception("Test failed!")
    }
}

func test_is_alive_2() {
    let character = RPGCharacter("John", 0, 20, 10)
    if (character.is_alive() != false) {
        throw Exception("Test failed!")
    }
}

func test_is_alive_3() {
    let character = RPGCharacter("John", -10, 20, 10)
    if (character.is_alive() != false) {
        throw Exception("Test failed!")
    }
}

func test_is_alive_4() {
    let character = RPGCharacter("John", 1, 20, 10)
    if (character.is_alive() != true) {
        throw Exception("Test failed!")
    }
}

func test_is_alive_5() {
    let character = RPGCharacter("John", 10, 20, 10)
    if (character.is_alive() != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_alive_1()
    test_is_alive_2()
    test_is_alive_3()
    test_is_alive_4()
    test_is_alive_5()
}
