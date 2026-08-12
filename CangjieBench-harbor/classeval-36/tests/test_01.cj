import std.time.DateTime
import std.collection.ArrayList
import std.collection.HashMap

func test_fetch() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    var email = HashMap<String, Any>()
    email["sender"] = "sender@example.com"
    email["receiver"] = "receiver@example.com"
    email["content"] = "Hello"
    email["size"] = 10
    email["time"] = timestamp
    email["state"] = "unread"
    receiver.inbox = ArrayList<HashMap<String, Any>>([email])
    let result = receiver.fetch()
    let expected = HashMap<String, Any>()
    expected["sender"] = "sender@example.com"
    expected["receiver"] = "receiver@example.com"
    expected["content"] = "Hello"
    expected["size"] = 10
    expected["time"] = timestamp
    expected["state"] = "read"
    if (result.size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((result["sender"] as String) != (expected["sender"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["receiver"] as String) != (expected["receiver"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["size"] as Int64) != (expected["size"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((result["time"] as String) != (expected["time"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["state"] as String) != (expected["state"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_fetch_2() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    let result = receiver.fetch()
    if (result.size != 0) {
        throw Exception("Test failed!")
    }
}

func test_fetch_3() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    var email = HashMap<String, Any>()
    email["sender"] = "sender@example.com"
    email["receiver"] = "receiver@example.com"
    email["content"] = "Hello"
    email["size"] = 10
    email["time"] = timestamp
    email["state"] = "read"
    receiver.inbox = ArrayList<HashMap<String, Any>>([email])
    let result = receiver.fetch()
    if (result.size != 0) {
        throw Exception("Test failed!")
    }
}

func test_fetch_4() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    var email1 = HashMap<String, Any>()
    email1["sender"] = "sender@example.com"
    email1["receiver"] = "receiver@example.com"
    email1["content"] = "Hello"
    email1["size"] = 10
    email1["time"] = "2021-01-01 00:00:00"
    email1["state"] = "unread"
    var email2 = HashMap<String, Any>()
    email2["sender"] = "sender@example.com"
    email2["receiver"] = "receiver@example.com"
    email2["content"] = "Hello"
    email2["size"] = 10
    email2["time"] = timestamp
    email2["state"] = "unread"
    receiver.inbox = ArrayList<HashMap<String, Any>>([email1, email2])
    let result = receiver.fetch()
    let expected = HashMap<String, Any>()
    expected["sender"] = "sender@example.com"
    expected["receiver"] = "receiver@example.com"
    expected["content"] = "Hello"
    expected["size"] = 10
    expected["time"] = "2021-01-01 00:00:00"
    expected["state"] = "read"
    if (result.size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((result["sender"] as String) != (expected["sender"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["receiver"] as String) != (expected["receiver"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["size"] as Int64) != (expected["size"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((result["time"] as String) != (expected["time"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["state"] as String) != (expected["state"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_fetch_5() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    var email1 = HashMap<String, Any>()
    email1["sender"] = "sender@example.com"
    email1["receiver"] = "receiver@example.com"
    email1["content"] = "Hello"
    email1["size"] = 10
    email1["time"] = "2021-01-01 00:00:00"
    email1["state"] = "read"
    var email2 = HashMap<String, Any>()
    email2["sender"] = "sender@example.com"
    email2["receiver"] = "receiver@example.com"
    email2["content"] = "Hello"
    email2["size"] = 10
    email2["time"] = timestamp
    email2["state"] = "unread"
    receiver.inbox = ArrayList<HashMap<String, Any>>([email1, email2])
    let result = receiver.fetch()
    let expected = HashMap<String, Any>()
    expected["sender"] = "sender@example.com"
    expected["receiver"] = "receiver@example.com"
    expected["content"] = "Hello"
    expected["size"] = 10
    expected["time"] = timestamp
    expected["state"] = "read"
    if (result.size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((result["sender"] as String) != (expected["sender"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["receiver"] as String) != (expected["receiver"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["size"] as Int64) != (expected["size"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((result["time"] as String) != (expected["time"] as String)) {
        throw Exception("Test failed!")
    }
    if ((result["state"] as String) != (expected["state"] as String)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_fetch()
    test_fetch_2()
    test_fetch_3()
    test_fetch_4()
    test_fetch_5()
}
