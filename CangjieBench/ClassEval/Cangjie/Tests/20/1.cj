
func test_remove_user() {
    let chat = Chat()
    chat.users.add('John', ArrayList<Message>())
    if (chat.remove_user('John') != true) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
}

func test_remove_user_2() {
    let chat = Chat()
    if (chat.remove_user('John') != false) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
}

func test_remove_user_3() {
    let chat = Chat()
    chat.users.add('John', ArrayList<Message>())
    chat.users.add('Mary', ArrayList<Message>())
    if (chat.remove_user('John') != true) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    expected_users.add('Mary', ArrayList<Message>())
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
}

func test_remove_user_4() {
    let chat = Chat()
    chat.users.add('John', ArrayList<Message>())
    chat.users.add('Mary', ArrayList<Message>())
    if (chat.remove_user('Mary') != true) {
        throw Exception("Test failed!")
    }
    if (chat.remove_user('John') != true) {
        throw Exception("Test failed!")
    }
    let expected_users = HashMap<String, ArrayList<Message>>()
    if (chat.users != expected_users) {
        throw Exception("Test failed!")
    }
}

func test_remove_user_5() {
    let chat = Chat()
    chat.users.add('John', ArrayList<Message>())
    chat.users.add('Mary', ArrayList<Message>())
    if (chat.remove_user('Amy') != false) {
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
    test_remove_user()
    test_remove_user_2()
    test_remove_user_3()
    test_remove_user_4()
    test_remove_user_5()
}