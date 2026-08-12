import std.collection.ArrayList
import std.convert.RadixConvertible

func test_replace_1() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#65;&#66;&#67;")
    if (res != "ABC") {
        print(res)
        throw Exception("Test failed!")
    }
}

func test_replace_2() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#65;&#65;&#65;")
    if (res != "AAA") {
        throw Exception("Test failed!")
    }
}

func test_replace_3() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#66;&#66;&#66;")
    if (res != "BBB") {
        throw Exception("Test failed!")
    }
}

func test_replace_4() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#67;&#67;&#67;")
    if (res != "CCC") {
        throw Exception("Test failed!")
    }
}

func test_replace_5() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("")
    if (res != "") {
        throw Exception("Test failed!")
    }
}

func test_replace_6() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#")
    if (res != "") {
        throw Exception("Test failed!")
    }
}

func test_replace_7() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#X65;&#66;&#67;")
    if (res != "eBC") {
        throw Exception("Test failed!")
    }
}

func test_replace_8() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#???;&#66;&#67;")
    if (res != "&#???;BC") {
        throw Exception("Test failed!")
    }
}

func test_replace_9() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#67;&#67;&#67;;")
    if (res != "CCC") {
        throw Exception("Test failed!")
    }
}

func test_replace_10() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#X")
    if (res != "") {
        throw Exception("Test failed!")
    }
}

func test_replace_11() {
    let unescaper = NumericEntityUnescaper()
    let res = unescaper.replace("&#c1d;&#66;&#67;")
    if (res != "") {
        throw Exception("Test failed!")
    }
}

main() {
    test_replace_1()
    test_replace_2()
    test_replace_3()
    test_replace_4()
    test_replace_5()
    test_replace_6()
    test_replace_7()
    test_replace_8()
    test_replace_9()
    test_replace_10()
    test_replace_11()
}
