import std.collection.HashMap
import std.collection.ArrayList
import std.time.DateTime

func test_main() {
    let chat = Chat()
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    if (chat.add_user('John') != true) {
        throw Exception("Test failed!")
    }
    if (chat.add_user('Mary') != true) {
        throw Exception("Test failed!")
    }
    if (chat.add_user('Amy') != true) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    expected_users.add('John', ArrayList<Message>())
    expected_users.add('Mary', ArrayList<Message>())
    expected_users.add('Amy', ArrayList<Message>())
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
    if (chat.remove_user('Amy') != true) {
        throw Exception("Test failed!")
    }
    let expected_users2 = HashMap<String, ArrayList<Message>>()
    expected_users2.add('John', ArrayList<Message>())
    expected_users2.add('Mary', ArrayList<Message>())
    if (chat.users != expected_users2) {
        throw Exception("Test failed!")
    }
    if (chat.send_message('John', 'Mary', 'Hello') != true) {
        throw Exception("Test failed!")
    }
    if (chat.send_message('John', 'Tom', 'Hello') != false) {
        throw Exception("Test failed!")
    }
    let expected_users3 = HashMap<String, ArrayList<Message>>()
    expected_users3.add('John', ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)]))
    expected_users3.add('Mary', ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)]))
    if (chat.users != expected_users3) {
        throw Exception("Test failed!")
    }
    let result = chat.get_messages('John')
    let expected_messages = ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)])
    if (result != expected_messages) {
        throw Exception("Test failed!")
    }
    let result2 = chat.get_messages('Mary')
    let expected_messages2 = ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)])
    if (result2 != expected_messages2) {
        throw Exception("Test failed!")
    }
}

func test_main_2() {
    let chat = Chat()
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    if (chat.remove_user('Amy') != false) {
        throw Exception("Test failed!")
    }
    if (chat.add_user('John') != true) {
        throw Exception("Test failed!")
    }
    if (chat.add_user('Mary') != true) {
        throw Exception("Test failed!")
    }
    if (chat.add_user('Amy') != true) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    expected_users.add('John', ArrayList<Message>())
    expected_users.add('Mary', ArrayList<Message>())
    expected_users.add('Amy', ArrayList<Message>())
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
    if (chat.send_message('John', 'Mary', 'Hello') != true) {
        throw Exception("Test failed!")
    }
    if (chat.send_message('John', 'Tom', 'Hello') != false) {
        throw Exception("Test failed!")
    }
    if (chat.remove_user('Amy') != true) {
        throw Exception("Test failed!")
    }
    let expected_users2 = HashMap<String, ArrayList<Message>>()
    expected_users2.add('John', ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)]))
    expected_users2.add('Mary', ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)]))
    if (chat.users != expected_users2) {
        throw Exception("Test failed!")
    }
    if (chat.users != expected_users2) {
        throw Exception("Test failed!")
    }
    let result = chat.get_messages('John')
    let expected_messages = ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)])
    if (result != expected_messages) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
    test_main_2()
}
