import std.collection.ArrayList
import std.collection.HashMap

func test_show_1() {
    let server = Server()
    server.add_white_list(66)
    server.send(HashMap<String, Any>([("addr", 88), ("content", "abc")]))
    server.recv(HashMap<String, Any>([("addr", 66), ("content", "ABC")]))
    let result = server.show("send") ?? HashMap<String, Any>()
    let expected = HashMap<String, Any>([("addr", 88), ("content", "abc")])
    if (result.size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((result["addr"] as Int64) != (expected["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((result["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_show_2() {
    let server = Server()
    server.add_white_list(66)
    server.send(HashMap<String, Any>([("addr", 88), ("content", "abc")]))
    server.recv(HashMap<String, Any>([("addr", 66), ("content", "ABC")]))
    let result = server.show("receive") ?? HashMap<String, Any>()
    let expected = HashMap<String, Any>([("addr", 66), ("content", "ABC")])
    if (result.size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((result["addr"] as Int64) != (expected["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((result["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_show_3() {
    let server = Server()
    server.add_white_list(66)
    server.send(HashMap<String, Any>([("addr", 88), ("content", "abc")]))
    server.recv(HashMap<String, Any>([("addr", 66), ("content", "ABC")]))
    let result = server.show("abcdefg") ?? HashMap<String, Any>()
    if (result.size != 0) {
        throw Exception("Test failed!")
    }
}

func test_show_4() {
    let server = Server()
    server.add_white_list(66)
    server.send(HashMap<String, Any>([("addr", 11), ("content", "abc")]))
    server.recv(HashMap<String, Any>([("addr", 66), ("content", "ABC")]))
    let result = server.show("send") ?? HashMap<String, Any>()
    let expected = HashMap<String, Any>([("addr", 11), ("content", "abc")])
    if (result.size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((result["addr"] as Int64) != (expected["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((result["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_show_5() {
    let server = Server()
    server.add_white_list(66)
    server.send(HashMap<String, Any>([("addr", 22), ("content", "abc")]))
    server.recv(HashMap<String, Any>([("addr", 66), ("content", "ABC")]))
    let result = server.show("send") ?? HashMap<String, Any>()
    let expected = HashMap<String, Any>([("addr", 22), ("content", "abc")])
    if (result.size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((result["addr"] as Int64) != (expected["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((result["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_show_1()
    test_show_2()
    test_show_3()
    test_show_4()
    test_show_5()
}
