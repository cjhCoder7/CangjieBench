func test_rail_fence_cipher() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.rail_fence_cipher("abc", 2) != "acb") {
        throw Exception("Test failed!")
    }
}

func test_rail_fence_cipher_2() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.rail_fence_cipher("hello", 2) != "hloel") {
        throw Exception("Test failed!")
    }
}

func test_rail_fence_cipher_3() {
    let encryption_utils = EncryptionUtils("longkey")
    if (encryption_utils.rail_fence_cipher("AbCdEfG", 2) != "ACEGbdf") {
        throw Exception("Test failed!")
    }
}

func test_rail_fence_cipher_4() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.rail_fence_cipher("Hello, World! 123", 2) != "Hlo ol!13el,Wrd 2") {
        throw Exception("Test failed!")
    }
}

func test_rail_fence_cipher_5() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.rail_fence_cipher("", 2) != "") {
        throw Exception("Test failed!")
    }
}

func test_rail_fence_cipher_6() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.rail_fence_cipher("abcdefg", 3) != "aebdfcg") {
        throw Exception("Test failed!")
    }
}

main() {
    test_rail_fence_cipher()
    test_rail_fence_cipher_2()
    test_rail_fence_cipher_3()
    test_rail_fence_cipher_4()
    test_rail_fence_cipher_5()
    test_rail_fence_cipher_6()
}