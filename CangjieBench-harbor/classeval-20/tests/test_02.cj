import std.collection.HashMap
import std.collection.ArrayList
import std.time.DateTime

func test_send_message() {
    let chat = Chat()
    chat.add_user('John')
    chat.add_user('Mary')
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    if (chat.send_message('John', 'Mary', 'Hello') != true) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, ArrayList<Message>>()
    expected.add('John', ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)]))
    expected.add('Mary', ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)]))
    if (chat.users != expected) {
        throw Exception("Test failed!")
    }
}

func test_send_message_2() {
    let chat = Chat()
    chat.add_user('John')
    chat.add_user('Mary')
    if (chat.send_message('John', 'Tom', 'Hello') != false) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, ArrayList<Message>>()
    expected.add('John', ArrayList<Message>())
    expected.add('Mary', ArrayList<Message>())
    if (chat.users != expected) {
        throw Exception("Test failed!")
    }
}

func test_send_message_3() {
    let chat = Chat()
    chat.add_user('John')
    chat.add_user('Mary')
    if (chat.send_message('Amy', 'Mary', 'Hello') != false) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, ArrayList<Message>>()
    expected.add('John', ArrayList<Message>())
    expected.add('Mary', ArrayList<Message>())
    if (chat.users != expected) {
        throw Exception("Test failed!")
    }
}

func test_send_message_4() {
    let chat = Chat()
    chat.add_user('John')
    chat.add_user('Mary')
    if (chat.send_message('Amy', 'Tom', 'Hello') != false) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, ArrayList<Message>>()
    expected.add('John', ArrayList<Message>())
    expected.add('Mary', ArrayList<Message>())
    if (chat.users != expected) {
        throw Exception("Test failed!")
    }
}

func test_send_message_5() {
    let chat = Chat()
    chat.add_user('John')
    chat.add_user('Mary')
    if (chat.send_message('Amy', 'Amy', 'Hello') != false) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, ArrayList<Message>>()
    expected.add('John', ArrayList<Message>())
    expected.add('Mary', ArrayList<Message>())
    if (chat.users != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_send_message()
    test_send_message_2()
    test_send_message_3()
    test_send_message_4()
    test_send_message_5()
}
