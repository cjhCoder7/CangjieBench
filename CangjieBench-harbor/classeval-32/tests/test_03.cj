import std.collection.ArrayList

func test_main() {
    let d = DecryptionUtils("key")
    if (d.caesar_decipher("ifmmp", 1) != "hello") {
        throw Exception("Test failed!")
    }
    if (d.vigenere_decipher("ifmmp") != "ybocl") {
        throw Exception("Test failed!")
    }
    if (d.rail_fence_decipher("Hoo!el,Wrdl l", 3) != "Hello, World!") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
