func test_recv_1() {
    let server = Server()
    server.add_white_list(88)
    server.recv(HashMap<String, Any>([("addr", 88), ("content", "abc")]))
    let expected = HashMap<String, Any>([("addr", 88), ("content", "abc")])
    if ((server.receive_struct["addr"] as Int64) != (expected["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((server.receive_struct["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_recv_2() {
    let server = Server()
    server.add_white_list(88)
    let flag = server.recv(HashMap<String, Any>([("addr", 66), ("content", "abc")]))
    let expected = HashMap<String, Any>()
    if (server.receive_struct.size != 0) {
        throw Exception("Test failed!")
    }
    if ((flag as Bool) != false) {
        throw Exception("Test failed!")
    }
}

func test_recv_3() {
    let server = Server()
    let flag = server.recv(HashMap<String, Any>())
    let expected = HashMap<String, Any>()
    if (server.receive_struct.size != 0) {
        throw Exception("Test failed!")
    }
    if ((flag as Int64) != -1) {
        throw Exception("Test failed!")
    }
}

func test_recv_4() {
    let server = Server()
    let flag = server.recv(HashMap<String, Any>([("addr", 88)]))
    let expected = HashMap<String, Any>()
    if (server.receive_struct.size != 0) {
        throw Exception("Test failed!")
    }
    if ((flag as Int64) != -1) {
        throw Exception("Test failed!")
    }
}

func test_recv_5() {
    let server = Server()
    let flag = server.recv(HashMap<String, Any>([("content", "abc")]))
    let expected = HashMap<String, Any>()
    if (server.receive_struct.size != 0) {
        throw Exception("Test failed!")
    }
    if ((flag as Int64) != -1) {
        throw Exception("Test failed!")
    }
}

main() {
    test_recv_1()
    test_recv_2()
    test_recv_3()
    test_recv_4()
    test_recv_5()
}