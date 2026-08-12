import std.collection.ArrayList

func test_vigenere_decipher() {
    let d = DecryptionUtils("key")
    if (d.vigenere_decipher("ifmmp") != "ybocl") {
        print(d.vigenere_decipher("ifmmp"))
        throw Exception("Test failed!")
    }
}

func test_vigenere_decipher_2() {
    let d = DecryptionUtils("key")
    if (d.vigenere_decipher("rijvs") != "hello") {
        throw Exception("Test failed!")
    }
}

func test_vigenere_decipher_3() {
    let d = DecryptionUtils("longkey")
    if (d.vigenere_decipher("LpPjOjE") != "AbCdEfG") {
        throw Exception("Test failed!")
    }
}

func test_vigenere_decipher_4() {
    let d = DecryptionUtils("key")
    if (d.vigenere_decipher("bcd") != "ryf") {
        throw Exception("Test failed!")
    }
}

func test_vigenere_decipher_5() {
    let d = DecryptionUtils("key")
    if (d.vigenere_decipher("bcdaa") != "ryfqw") {
        throw Exception("Test failed!")
    }
}

func test_vigenere_decipher_6() {
    let d = DecryptionUtils("key")
    if (d.vigenere_decipher("123") != "123") {
        throw Exception("Test failed!")
    }
}

main() {
    test_vigenere_decipher()
    test_vigenere_decipher_2()
    test_vigenere_decipher_3()
    test_vigenere_decipher_4()
    test_vigenere_decipher_5()
    test_vigenere_decipher_6()
}
