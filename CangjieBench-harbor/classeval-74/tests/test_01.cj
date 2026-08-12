import std.collection.ArrayList
import std.collection.HashMap

func test_del_white_list_1() {
    let server = Server()
    server.add_white_list(88)
    server.del_white_list(88)
    let expected = ArrayList<Int64>()
    if (server.white_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_del_white_list_2() {
    let server = Server()
    if (server.del_white_list(88) != None) {
        throw Exception("Test failed!")
    }
}

func test_del_white_list_3() {
    let server = Server()
    if (server.del_white_list(11) != None) {
        throw Exception("Test failed!")
    }
}

func test_del_white_list_4() {
    let server = Server()
    if (server.del_white_list(22) != None) {
        throw Exception("Test failed!")
    }
}

func test_del_white_list_5() {
    let server = Server()
    server.add_white_list(11)
    if (server.del_white_list(22) != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_del_white_list_1()
    test_del_white_list_2()
    test_del_white_list_3()
    test_del_white_list_4()
    test_del_white_list_5()
}
