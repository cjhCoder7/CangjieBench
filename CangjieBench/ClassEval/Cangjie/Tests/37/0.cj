func test_caesar_cipher() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.caesar_cipher("abc", 1) != "bcd") {
        throw Exception("Test failed!")
    }
}

func test_caesar_cipher_2() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.caesar_cipher("WORLD", -2) != "UMPJB") {
        throw Exception("Test failed!")
    }
}

func test_caesar_cipher_3() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.caesar_cipher("", 4) != "") {
        throw Exception("Test failed!")
    }
}

func test_caesar_cipher_4() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.caesar_cipher("abcxyz", 26) != "abcxyz") {
        throw Exception("Test failed!")
    }
}

func test_caesar_cipher_5() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.caesar_cipher("abcxyz", 27) != "bcdyza") {
        throw Exception("Test failed!")
    }
}

func test_caesar_cipher_6() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.caesar_cipher("123", 27) != "123") {
        throw Exception("Test failed!")
    }
}

main() {
    test_caesar_cipher()
    test_caesar_cipher_2()
    test_caesar_cipher_3()
    test_caesar_cipher_4()
    test_caesar_cipher_5()
    test_caesar_cipher_6()
}