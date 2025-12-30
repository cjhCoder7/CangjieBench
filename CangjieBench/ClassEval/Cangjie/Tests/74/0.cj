func test_add_white_list_1() {
    let server = Server()
    server.add_white_list(88)
    let expected = ArrayList<Int64>([88])
    if (server.white_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_white_list_2() {
    let server = Server()
    server.add_white_list(88)
    if (server.add_white_list(88) != None) {
        throw Exception("Test failed!")
    }
}

func test_add_white_list_3() {
    let server = Server()
    server.add_white_list(88)
    server.add_white_list(11)
    if (server.add_white_list(11) != None) {
        throw Exception("Test failed!")
    }
}

func test_add_white_list_4() {
    let server = Server()
    server.add_white_list(11)
    let expected = ArrayList<Int64>([11])
    if (server.white_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_white_list_5() {
    let server = Server()
    server.add_white_list(88)
    server.add_white_list(11)
    server.add_white_list(22)
    if (server.add_white_list(22) != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_white_list_1()
    test_add_white_list_2()
    test_add_white_list_3()
    test_add_white_list_4()
    test_add_white_list_5()
}