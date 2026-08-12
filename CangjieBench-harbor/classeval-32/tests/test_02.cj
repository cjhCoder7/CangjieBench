import std.collection.ArrayList

func test_rail_fence_decipher() {
    let d = DecryptionUtils("key")
    if (d.rail_fence_decipher("Hoo!el,Wrdl l", 3) != "Hello, World!") {
        throw Exception("Test failed!")
    }
}

func test_rail_fence_decipher_2() {
    let d = DecryptionUtils("key")
    if (d.rail_fence_decipher("Hoo!el,Wrdl l", 4) != "H!W reoldll,o") {
        throw Exception("Test failed!")
    }
}

func test_rail_fence_decipher_3() {
    let d = DecryptionUtils("key")
    if (d.rail_fence_decipher("Hoo!el,Wrdl l", 5) != "Holr d,!oeWll") {
        throw Exception("Test failed!")
    }
}

func test_rail_fence_decipher_4() {
    let d = DecryptionUtils("key")
    if (d.rail_fence_decipher("Hoo!el,Wrdl l", 6) != "Holrll d,!oeW") {
        throw Exception("Test failed!")
    }
}

func test_rail_fence_decipher_5() {
    let d = DecryptionUtils("key")
    if (d.rail_fence_decipher("Hoo!el,Wrdl l", 7) != "Hoe,rll dWl!o") {
        throw Exception("Test failed!")
    }
}

main() {
    test_rail_fence_decipher()
    test_rail_fence_decipher_2()
    test_rail_fence_decipher_3()
    test_rail_fence_decipher_4()
    test_rail_fence_decipher_5()
}
