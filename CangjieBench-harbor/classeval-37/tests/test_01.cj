import std.collection.ArrayList

func test_vigenere_cipher() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.vigenere_cipher("abc") != "kfa") {
        throw Exception("Test failed!")
    }
}

func test_vigenere_cipher_2() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.vigenere_cipher("hello") != "rijvs") {
        throw Exception("Test failed!")
    }
}

func test_vigenere_cipher_3() {
    let encryption_utils = EncryptionUtils("longkey")
    if (encryption_utils.vigenere_cipher("AbCdEfG") != "LpPjOjE") {
        throw Exception("Test failed!")
    }
}

func test_vigenere_cipher_4() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.vigenere_cipher("Hello, World! 123") != "Rijvs, Uyvjn! 123") {
        throw Exception("Test failed!")
    }
}

func test_vigenere_cipher_5() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.vigenere_cipher("") != "") {
        throw Exception("Test failed!")
    }
}

main() {
    test_vigenere_cipher()
    test_vigenere_cipher_2()
    test_vigenere_cipher_3()
    test_vigenere_cipher_4()
    test_vigenere_cipher_5()
}
