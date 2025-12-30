func test_heal_1() {
    let character = RPGCharacter("John", 90, 20, 10)
    character.heal()
    if (character.hp != 100) {
        throw Exception("Test failed!")
    }
}

func test_heal_2() {
    let character = RPGCharacter("John", 97, 20, 10)
    character.heal()
    if (character.hp != 100) {
        throw Exception("Test failed!")
    }
}

func test_heal_3() {
    let character = RPGCharacter("John", 100, 20, 10)
    character.heal()
    if (character.hp != 100) {
        throw Exception("Test failed!")
    }
}

func test_heal_4() {
    let character = RPGCharacter("John", 100, 20, 10)
    character.hp = 50
    character.heal()
    if (character.hp != 60) {
        throw Exception("Test failed!")
    }
}

func test_heal_5() {
    let character = RPGCharacter("John", 100, 20, 10)
    character.hp = 10
    character.heal()
    if (character.hp != 20) {
        throw Exception("Test failed!")
    }
}

main() {
    test_heal_1()
    test_heal_2()
    test_heal_3()
    test_heal_4()
    test_heal_5()
}