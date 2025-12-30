func test_get_messages() {
    let chat = Chat()
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    chat.add_user('John')
    chat.users['John'] = ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)])
    let result = chat.get_messages('John')
    let expected = ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_messages_2() {
    let chat = Chat()
    chat.add_user('John')
    chat.add_user('Mary')
    let result = chat.get_messages('John')
    let expected = ArrayList<Message>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_messages_3() {
    let chat = Chat()
    chat.add_user('John')
    chat.add_user('Mary')
    let result = chat.get_messages('Amy')
    let expected = ArrayList<Message>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_messages_4() {
    let chat = Chat()
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    chat.add_user('John')
    chat.add_user('Mary')
    chat.users['John'] = ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)])
    let result = chat.get_messages('Mary')
    let expected = ArrayList<Message>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_messages_5() {
    let chat = Chat()
    let timestamp = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
    chat.add_user('John')
    chat.users['John'] = ArrayList<Message>([Message('John', 'Mary', 'Hello', timestamp)])
    let result = chat.get_messages('Amy')
    let expected = ArrayList<Message>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_messages()
    test_get_messages_2()
    test_get_messages_3()
    test_get_messages_4()
    test_get_messages_5()
}