func test_send_to() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    if (!sender.send_to(receiver, "Hello", 10)) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, Any>()
    expected["sender"] = "sender@example.com"
    expected["receiver"] = "receiver@example.com"
    expected["content"] = "Hello"
    expected["size"] = 10
    expected["time"] = timestamp
    expected["state"] = "unread"

    if (receiver.inbox[0].size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["sender"] as String) != (expected["sender"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["receiver"] as String) != (expected["receiver"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["size"] as Int64) != (expected["size"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["time"] as String) != (expected["time"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["state"] as String) != (expected["state"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_send_to_2() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 0)
    if (sender.send_to(receiver, "Hello", 10)) {
        throw Exception("Test failed!")
    }
}

func test_send_to_3() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    var email = HashMap<String, Any>()
    email["sender"] = "sender@example.com"
    email["receiver"] = "receiver@example.com"
    email["content"] = "Hello"
    email["size"] = 50
    email["time"] = "2021-01-01 00:00:00"
    email["state"] = "unread"
    receiver.inbox = ArrayList<HashMap<String, Any>>([email])
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    if (sender.send_to(receiver, "Hello", 10)) {
        throw Exception("Test failed!")
    }
    let expected = ArrayList<HashMap<String, Any>>()
    expected.add(email)
    if (receiver.inbox.size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["sender"] as String) != (expected[0]["sender"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["receiver"] as String) != (expected[0]["receiver"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["content"] as String) != (expected[0]["content"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["size"] as Int64) != (expected[0]["size"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["time"] as String) != (expected[0]["time"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["state"] as String) != (expected[0]["state"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_send_to_4() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 30)
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    if (!sender.send_to(receiver, "Hello", 20)) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, Any>()
    expected["sender"] = "sender@example.com"
    expected["receiver"] = "receiver@example.com"
    expected["content"] = "Hello"
    expected["size"] = 20
    expected["time"] = timestamp
    expected["state"] = "unread"
    let expected_inbox = ArrayList<HashMap<String, Any>>([expected])
    if (receiver.inbox.size != expected_inbox.size) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["sender"] as String) != (expected["sender"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["receiver"] as String) != (expected["receiver"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["size"] as Int64) != (expected["size"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["time"] as String) != (expected["time"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["state"] as String) != (expected["state"] as String)) {
        throw Exception("Test failed!")
    }
}

func test_send_to_5() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 30)
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    if (!sender.send_to(receiver, "bye", 20)) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, Any>()
    expected["sender"] = "sender@example.com"
    expected["receiver"] = "receiver@example.com"
    expected["content"] = "bye"
    expected["size"] = 20
    expected["time"] = timestamp
    expected["state"] = "unread"
    let expected_inbox = ArrayList<HashMap<String, Any>>([expected])
    if (receiver.inbox.size != expected_inbox.size) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["sender"] as String) != (expected["sender"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["receiver"] as String) != (expected["receiver"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["content"] as String) != (expected["content"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["size"] as Int64) != (expected["size"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["time"] as String) != (expected["time"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["state"] as String) != (expected["state"] as String)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_send_to()
    test_send_to_2()
    test_send_to_3()
    test_send_to_4()
    test_send_to_5()
}