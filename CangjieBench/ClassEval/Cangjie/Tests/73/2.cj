func test_gain_exp_1() {
    let character = RPGCharacter("John", 100, 20, 10)
    character.gain_exp(100)
    if (character.level != 2) {
        throw Exception("Test failed!")
    }
    if (character.exp != 0) {
        throw Exception("Test failed!")
    }
}

func test_gain_exp_2() {
    let character = RPGCharacter("John", 100, 20, 10)
    character.gain_exp(1100)
    if (character.level != 5) {
        throw Exception("Test failed!")
    }
    if (character.exp != 100) {
        throw Exception("Test failed!")
    }
}

func test_gain_exp_3() {
    let character = RPGCharacter("John", 100, 20, 10)
    character.gain_exp(200)
    if (character.level != 2) {
        throw Exception("Test failed!")
    }
    if (character.exp != 100) {
        throw Exception("Test failed!")
    }
}

func test_gain_exp_4() {
    let character = RPGCharacter("John", 100, 20, 10)
    character.gain_exp(300)
    if (character.level != 3) {
        throw Exception("Test failed!")
    }
    if (character.exp != 0) {
        throw Exception("Test failed!")
    }
}

func test_gain_exp_5() {
    let character = RPGCharacter("John", 100, 20, 10)
    character.gain_exp(400)
    if (character.level != 3) {
        throw Exception("Test failed!")
    }
    if (character.exp != 100) {
        throw Exception("Test failed!")
    }
}

main() {
    test_gain_exp_1()
    test_gain_exp_2()
    test_gain_exp_3()
    test_gain_exp_4()
    test_gain_exp_5()
}