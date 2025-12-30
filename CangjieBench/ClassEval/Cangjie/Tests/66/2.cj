func test_numericentityunescaper() {
    var unescaper = NumericEntityUnescaper()
    var res = unescaper.replace("&#65;&#66;&#67;")
    if (res != "ABC") {
        throw Exception("Test failed!")
    }

    let res2 = NumericEntityUnescaper.is_hex_char(r'0')
    if (res2 != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_numericentityunescaper()
}