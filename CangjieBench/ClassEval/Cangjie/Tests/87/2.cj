func test_add_seconds_1() {
    let timeutils = TimeUtils()
    let expected = timeutils.datetime.addSeconds(600).format("HH:mm:ss")
    if (timeutils.add_seconds(600) != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_seconds_2() {
    let timeutils = TimeUtils()
    let expected = timeutils.datetime.addSeconds(500).format("HH:mm:ss")
    if (timeutils.add_seconds(500) != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_seconds_3() {
    let timeutils = TimeUtils()
    let expected = timeutils.datetime.addSeconds(400).format("HH:mm:ss")
    if (timeutils.add_seconds(400) != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_seconds_4() {
    let timeutils = TimeUtils()
    let expected = timeutils.datetime.addSeconds(300).format("HH:mm:ss")
    if (timeutils.add_seconds(300) != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_seconds_5() {
    let timeutils = TimeUtils()
    let expected = timeutils.datetime.addSeconds(200).format("HH:mm:ss")
    if (timeutils.add_seconds(200) != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_seconds_1()
    test_add_seconds_2()
    test_add_seconds_3()
    test_add_seconds_4()
    test_add_seconds_5()
}