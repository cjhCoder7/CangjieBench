func test_main() {
    let character1 = RPGCharacter("John", 100, 20, 10)
    let character2 = RPGCharacter("Enemy", 100, 15, 5)
    character1.attack(character2)
    if (character2.hp != 85) {
        throw Exception("Test failed!")
    }
    character2.heal()
    if (character2.hp != 95) {
        throw Exception("Test failed!")
    }
    character1.gain_exp(200)
    if (character1.exp != 100) {
        throw Exception("Test failed!")
    }
    if (character1.hp != 120) {
        throw Exception("Test failed!")
    }
    if (character1.attack_power != 25) {
        throw Exception("Test failed!")
    }
    if (character1.defense != 15) {
        throw Exception("Test failed!")
    }
    if (character1.is_alive() != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
