import std.collection.ArrayList
import std.collection.HashMap

func test_send_1() {
    let server = Server()
    server.send(HashMap<String, Any>([("addr", 88), ("content", "abc")]))
    let expected = HashMap<String, Any>([("addr", 88), ("content", "abc")])
    if (server.send_struct.size != 2) {
        throw Exception("Test failed!")
    }
    if ((server.send_struct["addr"] as Int64) != (expected["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((server.send_struct["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_send_2() {
    let server = Server()
    let flag = server.send(HashMap<String, Any>([("addr", 88)]))
    if (flag != "info structure is not correct") {
        throw Exception("Test failed!")
    }
}

func test_send_3() {
    let server = Server()
    let flag = server.send(HashMap<String, Any>([("content", "abc")]))
    if (flag != "info structure is not correct") {
        throw Exception("Test failed!")
    }
}

func test_send_4() {
    let server = Server()
    let flag = server.send(HashMap<String, Any>())
    if (flag != "info structure is not correct") {
        throw Exception("Test failed!")
    }
}

func test_send_5() {
    let server = Server()
    server.send(HashMap<String, Any>([("addr", 66), ("content", "abc")]))
    let expected = HashMap<String, Any>([("addr", 66), ("content", "abc")])
    if (server.send_struct.size != 2) {
        throw Exception("Test failed!")
    }
    if ((server.send_struct["addr"] as Int64) != (expected["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((server.send_struct["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_send_1()
    test_send_2()
    test_send_3()
    test_send_4()
    test_send_5()
}
