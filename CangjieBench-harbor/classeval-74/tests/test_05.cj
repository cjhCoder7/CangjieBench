import std.collection.ArrayList
import std.collection.HashMap

func test_server() {
    let server = Server()
    server.add_white_list(88)
    let expected1 = ArrayList<Int64>([88])
    if (server.white_list != expected1) {
        throw Exception("Test failed!")
    }
    server.del_white_list(88)
    let expected2 = ArrayList<Int64>()
    if (server.white_list != expected2) {
        throw Exception("Test failed!")
    }
    server.add_white_list(88)
    server.recv(HashMap<String, Any>([("addr", 88), ("content", "abc")]))
    let expected3 = HashMap<String, Any>([("addr", 88), ("content", "abc")])
    if (server.receive_struct.size != expected3.size) {
        throw Exception("Test failed!")
    }
    if ((server.receive_struct["addr"] as Int64) != (expected3["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((server.receive_struct["content"] as String) != (expected3["content"] as String)) {
        throw Exception("Test failed!")
    }
    server.send(HashMap<String, Any>([("addr", 66), ("content", "ABC")]))
    let expected4 = HashMap<String, Any>([("addr", 66), ("content", "ABC")])
    if (server.send_struct.size != expected4.size) {
        throw Exception("Test failed!")
    }
    if ((server.send_struct["addr"] as Int64) != (expected4["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((server.send_struct["content"] as String) != (expected4["content"] as String)) {
        throw Exception("Test failed!")
    }
    server.recv(HashMap<String, Any>([("addr", 88), ("content", "abc")]))
    let result = server.show("receive") ?? HashMap<String, Any>()
    let expected5 = HashMap<String, Any>([("addr", 88), ("content", "abc")])
    if (result.size != expected5.size) {
        throw Exception("Test failed!")
    }
    if ((result["addr"] as Int64) != (expected5["addr"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((result["content"] as String) != (expected5["content"] as String)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_server()
}
