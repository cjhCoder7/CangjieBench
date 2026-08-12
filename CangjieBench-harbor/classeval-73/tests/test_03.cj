func test_level_up_1() {
    let character = RPGCharacter("John", 100, 20, 10)
    character.level_up()
    if (character.level != 2) {
        throw Exception("Test failed!")
    }
    if (character.exp != 0) {
        throw Exception("Test failed!")
    }
    if (character.hp != 120) {
        throw Exception("Test failed!")
    }
    if (character.attack_power != 25) {
        throw Exception("Test failed!")
    }
    if (character.defense != 15) {
        throw Exception("Test failed!")
    }
}

func test_level_up_2() {
    let character = RPGCharacter("John", 100, 20, 10, level: 100)
    character.level_up()
    if (character.level != 100) {
        throw Exception("Test failed!")
    }
    if (character.exp != 0) {
        throw Exception("Test failed!")
    }
    if (character.hp != 100) {
        throw Exception("Test failed!")
    }
    if (character.attack_power != 20) {
        throw Exception("Test failed!")
    }
    if (character.defense != 10) {
        throw Exception("Test failed!")
    }
}

func test_level_up_3() {
    let character = RPGCharacter("John", 100, 20, 10, level: 2)
    character.level_up()
    if (character.level != 3) {
        throw Exception("Test failed!")
    }
    if (character.exp != 0) {
        throw Exception("Test failed!")
    }
    if (character.hp != 120) {
        throw Exception("Test failed!")
    }
    if (character.attack_power != 25) {
        throw Exception("Test failed!")
    }
    if (character.defense != 15) {
        throw Exception("Test failed!")
    }
}

func test_level_up_4() {
    let character = RPGCharacter("John", 100, 20, 10, level: 3)
    character.level_up()
    if (character.level != 4) {
        throw Exception("Test failed!")
    }
    if (character.exp != 0) {
        throw Exception("Test failed!")
    }
    if (character.hp != 120) {
        throw Exception("Test failed!")
    }
    if (character.attack_power != 25) {
        throw Exception("Test failed!")
    }
    if (character.defense != 15) {
        throw Exception("Test failed!")
    }
}

func test_level_up_5() {
    let character = RPGCharacter("John", 100, 20, 10, level: 4)
    character.level_up()
    if (character.level != 5) {
        throw Exception("Test failed!")
    }
    if (character.exp != 0) {
        throw Exception("Test failed!")
    }
    if (character.hp != 120) {
        throw Exception("Test failed!")
    }
    if (character.attack_power != 25) {
        throw Exception("Test failed!")
    }
    if (character.defense != 15) {
        throw Exception("Test failed!")
    }
}

main() {
    test_level_up_1()
    test_level_up_2()
    test_level_up_3()
    test_level_up_4()
    test_level_up_5()
}
