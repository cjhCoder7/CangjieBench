func test_clear_inbox() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    var email1 = HashMap<String, Any>()
    email1["size"] = 10
    var email2 = HashMap<String, Any>()
    email2["size"] = 20
    var email3 = HashMap<String, Any>()
    email3["size"] = 15
    receiver.inbox = ArrayList<HashMap<String, Any>>([email1, email2, email3])
    receiver.clear_inbox(30)
    let expected = ArrayList<HashMap<String, Any>>([email3])
    if (receiver.inbox.size != expected.size) {
        throw Exception("Test failed!")
    }
    if ((receiver.inbox[0]["size"] as Int64) != (expected[0]["size"] as Int64)) {
        throw Exception("Test failed!")
    }
}

func test_clear_inbox_2() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("", 50)
    var email1 = HashMap<String, Any>()
    email1["size"] = 10
    var email2 = HashMap<String, Any>()
    email2["size"] = 20
    var email3 = HashMap<String, Any>()
    email3["size"] = 15
    receiver.inbox = ArrayList<HashMap<String, Any>>([email1, email2, email3])
    receiver.clear_inbox(30)
    let expected = ArrayList<HashMap<String, Any>>([email1, email2, email3])
    if (receiver.inbox.size != expected.size) {
        throw Exception("Test failed!")
    }
    for (i in 0..receiver.inbox.size) {
        if ((receiver.inbox[i]["size"] as Int64) != (expected[i]["size"] as Int64)) {
            throw Exception("Test failed!")
        }
    }
}

func test_clear_inbox_3() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    var email1 = HashMap<String, Any>()
    email1["size"] = 10
    var email2 = HashMap<String, Any>()
    email2["size"] = 20
    var email3 = HashMap<String, Any>()
    email3["size"] = 15
    receiver.inbox = ArrayList<HashMap<String, Any>>([email1, email2, email3])
    receiver.clear_inbox(50)
}

func test_clear_inbox_4() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    var email1 = HashMap<String, Any>()
    email1["size"] = 10
    var email2 = HashMap<String, Any>()
    email2["size"] = 20
    var email3 = HashMap<String, Any>()
    email3["size"] = 15
    receiver.inbox = ArrayList<HashMap<String, Any>>([email1, email2, email3])
    receiver.clear_inbox(45)
    let expected = ArrayList<HashMap<String, Any>>()
    if (receiver.inbox.size != expected.size) {
        throw Exception("Test failed!")
    }
}

func test_clear_inbox_5() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    var email1 = HashMap<String, Any>()
    email1["size"] = 10
    var email2 = HashMap<String, Any>()
    email2["size"] = 20
    var email3 = HashMap<String, Any>()
    email3["size"] = 15
    receiver.inbox = ArrayList<HashMap<String, Any>>([email1, email2, email3])
    receiver.clear_inbox(10)
    let expected = ArrayList<HashMap<String, Any>>([email2, email3])
    if (receiver.inbox.size != expected.size) {
        throw Exception("Test failed!")
    }
    for (i in 0..receiver.inbox.size) {
        if ((receiver.inbox[i]["size"] as Int64) != (expected[i]["size"] as Int64)) {
            throw Exception("Test failed!")
        }
    }
}

main() {
    test_clear_inbox()
    test_clear_inbox_2()
    test_clear_inbox_3()
    test_clear_inbox_4()
    test_clear_inbox_5()
}