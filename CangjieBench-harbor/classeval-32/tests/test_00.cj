import std.collection.ArrayList

func test_caesar_decipher() {
    let d = DecryptionUtils("key")
    if (d.caesar_decipher("ifmmp", 1) != "hello") {
        throw Exception("Test failed!")
    }
}

func test_caesar_decipher_2() {
    let d = DecryptionUtils("key")
    if (d.caesar_decipher("bcdyza", 27) != "abcxyz") {
        throw Exception("Test failed!")
    }
}

func test_caesar_decipher_3() {
    let d = DecryptionUtils("key")
    if (d.caesar_decipher("bcd", 0) != "bcd") {
        throw Exception("Test failed!")
    }
}

func test_caesar_decipher_4() {
    let d = DecryptionUtils("key")
    if (d.caesar_decipher("bcd", 26) != "bcd") {
        throw Exception("Test failed!")
    }
}

func test_caesar_decipher_5() {
    let d = DecryptionUtils("key")
    if (d.caesar_decipher("bcd", -26) != "bcd") {
        throw Exception("Test failed!")
    }
}

func test_caesar_decipher_6() {
    let d = DecryptionUtils("key")
    if (d.caesar_decipher("IFMMP", 1) != "HELLO") {
        throw Exception("Test failed!")
    }
}

func test_caesar_decipher_7() {
    let d = DecryptionUtils("key")
    if (d.caesar_decipher("123", 1) != "123") {
        throw Exception("Test failed!")
    }
}

main() {
    test_caesar_decipher()
    test_caesar_decipher_2()
    test_caesar_decipher_3()
    test_caesar_decipher_4()
    test_caesar_decipher_5()
    test_caesar_decipher_6()
    test_caesar_decipher_7()
}
