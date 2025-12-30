
func test_main() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    if (!sender.send_to(receiver, "Hello", 10)) {
        throw Exception("Test failed!")
    }
    var expected_email = HashMap<String, Any>()
    expected_email["sender"] = "sender@example.com"
    expected_email["receiver"] = "receiver@example.com"
    expected_email["content"] = "Hello"
    expected_email["size"] = 10
    expected_email["time"] = timestamp
    expected_email["state"] = "unread"
    if (receiver.inbox[0].size != expected_email.size) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["sender"] as String) != (expected_email["sender"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["receiver"] as String) != (expected_email["receiver"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["content"] as String) != (expected_email["content"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["size"] as Int64) != (expected_email["size"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["time"] as String) != (expected_email["time"] as String)) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["state"] as String) != (expected_email["state"] as String)) {
        throw Exception("Test failed!")
    }

    let fetched_email = receiver.fetch()
    expected_email["state"] = "read"
    if (fetched_email.size != expected_email.size) {
        throw Exception("Test failed!")
    }
    if ((fetched_email["sender"] as String) != (expected_email["sender"] as String)) {
        throw Exception("Test failed!")
    }
    if ((fetched_email["receiver"] as String) != (expected_email["receiver"] as String)) {
        throw Exception("Test failed!")
    }
    if ((fetched_email["content"] as String) != (expected_email["content"] as String)) {
        throw Exception("Test failed!")
    }
    if ((fetched_email["size"] as Int64) != (expected_email["size"] as Int64)) {
        throw Exception("Test failed!")
    }
    if ((fetched_email["time"] as String) != (expected_email["time"] as String)) {
        throw Exception("Test failed!")
    }
    if ((fetched_email["state"] as String) != (expected_email["state"] as String)) {
        throw Exception("Test failed!")
    }

    if (receiver.is_full_with_one_more_email(10)) {
        throw Exception("Test failed!")
    }

    if (receiver.get_occupied_size() != 10) {
        throw Exception("Test failed!")
    }
    var email1 = HashMap<String, Any>()
    email1["size"] = 10
    var email2 = HashMap<String, Any>()
    email2["size"] = 20
    var email3 = HashMap<String, Any>()
    email3["size"] = 15
    receiver.inbox = ArrayList<HashMap<String, Any>>([email1, email2, email3])
    receiver.clear_inbox(30)
    let expected_inbox = ArrayList<HashMap<String, Any>>([email3])
    if (receiver.inbox.size != expected_inbox.size) {
        throw Exception("Test failed!")
    }
    for (i in 0..receiver.inbox.size) {
        if ((receiver.inbox[i] as Int64) != (expected_inbox[i] as Int64)) {
            throw Exception("Test failed!")
        }
    }
}

main() {
    test_main()
}