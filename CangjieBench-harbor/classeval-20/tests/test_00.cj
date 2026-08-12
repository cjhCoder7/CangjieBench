import std.collection.HashMap
import std.collection.ArrayList
import std.time.DateTime

func test_add_user() {
    let chat = Chat()
    if (chat.add_user('John') != true) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    expected_users.add('John', ArrayList<Message>())
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
}

func test_add_user_2() {
    let chat = Chat()
    chat.users.add('John', ArrayList<Message>())
    if (chat.add_user('John') != false) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    expected_users.add('John', ArrayList<Message>())
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
}

func test_add_user_3() {
    let chat = Chat()
    chat.users.add('John', ArrayList<Message>())
    if (chat.add_user('Mary') != true) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    expected_users.add('John', ArrayList<Message>())
    expected_users.add('Mary', ArrayList<Message>())
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
}

func test_add_user_4() {
    let chat = Chat()
    chat.users.add('John', ArrayList<Message>())
    if (chat.add_user('Mary') != true) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    expected_users.add('John', ArrayList<Message>())
    expected_users.add('Mary', ArrayList<Message>())
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
}

func test_add_user_5() {
    let chat = Chat()
    if (chat.add_user('John') != true) {
        throw Exception("Test failed!")
    }
    if (chat.add_user('Mary') != true) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    expected_users.add('John', ArrayList<Message>())
    expected_users.add('Mary', ArrayList<Message>())
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_user()
    test_add_user_2()
    test_add_user_3()
    test_add_user_4()
    test_add_user_5()
}
