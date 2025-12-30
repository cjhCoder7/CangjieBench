func test_attack() {
    let character1 = RPGCharacter("John", 100, 20, 10)
    let character2 = RPGCharacter("Enemy", 100, 15, 5)
    character1.attack(character2)
    if (character2.hp != 85) {
        throw Exception("Test failed!")
    }
}

func test_attack_2() {
    let character1 = RPGCharacter("John", 100, 20, 10)
    let character2 = RPGCharacter("Enemy", 100, 15, 5)
    character2.attack(character1)
    if (character1.hp != 95) {
        throw Exception("Test failed!")
    }
}

func test_attack_3() {
    let character1 = RPGCharacter("John", 100, 20, 10)
    let character2 = RPGCharacter("Enemy", 100, 15, 5)
    character1.attack(character2)
    character2.attack(character1)
    if (character1.hp != 95) {
        throw Exception("Test failed!")
    }
    if (character2.hp != 85) {
        throw Exception("Test failed!")
    }
}

func test_attack_4() {
    let character1 = RPGCharacter("John", 100, 20, 10)
    let character2 = RPGCharacter("Enemy", 100, 15, 5)
    character1.attack(character2)
    character1.attack(character2)
    if (character2.hp != 70) {
        throw Exception("Test failed!")
    }
}

func test_attack_5() {
    let character1 = RPGCharacter("John", 100, 20, 10)
    let character2 = RPGCharacter("Enemy", 100, 15, 5)
    character1.attack(character2)
    character1.attack(character2)
    character1.attack(character2)
    if (character2.hp != 55) {
        throw Exception("Test failed!")
    }
}

main() {
    test_attack()
    test_attack_2()
    test_attack_3()
    test_attack_4()
    test_attack_5()
}