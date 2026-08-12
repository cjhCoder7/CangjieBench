import std.time.DateTime
import std.collection.ArrayList
import std.collection.HashMap

func test_get_occupied_size() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    var email = HashMap<String, Any>()
    email["sender"] = "sender@example.com"
    email["receiver"] = "receiver@example.com"
    email["content"] = "Hello"
    email["size"] = 10
    email["time"] = DateTime.now
    email["state"] = "unread"
    sender.inbox = ArrayList<HashMap<String, Any>>([email])
    if (sender.get_occupied_size() != 10) {
        throw Exception("Test failed!")
    }
}

func test_get_occupied_size_2() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    sender.inbox = ArrayList<HashMap<String, Any>>()
    if (sender.get_occupied_size() != 0) {
        throw Exception("Test failed!")
    }
}

func test_get_occupied_size_3() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    var email = HashMap<String, Any>()
    email["sender"] = "sender@example.com"
    email["receiver"] = "receiver@example.com"
    email["content"] = "Hello"
    email["size"] = 20
    email["time"] = DateTime.now
    email["state"] = "unread"
    sender.inbox = ArrayList<HashMap<String, Any>>([email])
    if (sender.get_occupied_size() != 20) {
        throw Exception("Test failed!")
    }
}

func test_get_occupied_size_4() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    var email1 = HashMap<String, Any>()
    email1["sender"] = "sender@example.com"
    email1["receiver"] = "receiver@example.com"
    email1["content"] = "Hello"
    email1["size"] = 20
    email1["time"] = DateTime.now
    email1["state"] = "unread"
    var email2 = HashMap<String, Any>()
    email2["sender"] = "sender@example.com"
    email2["receiver"] = "receiver@example.com"
    email2["content"] = "Hello"
    email2["size"] = 30
    email2["time"] = DateTime.now
    email2["state"] = "unread"
    sender.inbox = ArrayList<HashMap<String, Any>>([email1, email2])
    if (sender.get_occupied_size() != 50) {
        throw Exception("Test failed!")
    }
}

func test_get_occupied_size_5() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    var email1 = HashMap<String, Any>()
    email1["sender"] = "sender@example.com"
    email1["receiver"] = "receiver@example.com"
    email1["content"] = "Hello"
    email1["size"] = 20
    email1["time"] = DateTime.now
    email1["state"] = "unread"
    var email2 = HashMap<String, Any>()
    email2["sender"] = "sender@example.com"
    email2["receiver"] = "receiver@example.com"
    email2["content"] = "Hello"
    email2["size"] = 60
    email2["time"] = DateTime.now
    email2["state"] = "unread"
    sender.inbox = ArrayList<HashMap<String, Any>>([email1, email2])
    if (sender.get_occupied_size() != 80) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_occupied_size()
    test_get_occupied_size_2()
    test_get_occupied_size_3()
    test_get_occupied_size_4()
    test_get_occupied_size_5()
}
