import std.collection.ArrayList

func test_main() {
    let encryption_utils = EncryptionUtils("key")
    if (encryption_utils.caesar_cipher("abc", 1) != "bcd") {
        throw Exception("Test failed!")
    }
    if (encryption_utils.vigenere_cipher("abc") != "kfa") {
        throw Exception("Test failed!")
    }
    if (encryption_utils.rail_fence_cipher("abc", 2) != "acb") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
