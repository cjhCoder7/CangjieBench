func test_is_full_with_one_more_email() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 50)
    if (receiver.is_full_with_one_more_email(10)) {
        throw Exception("Test failed!")
    }
}

func test_is_full_with_one_more_email_2() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 0)
    if (!receiver.is_full_with_one_more_email(10)) {
        throw Exception("Test failed!")
    }
}

func test_is_full_with_one_more_email_3() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 10)
    if (receiver.is_full_with_one_more_email(10)) {
        throw Exception("Test failed!")
    }
}

func test_is_full_with_one_more_email_4() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 10)
    if (!receiver.is_full_with_one_more_email(20)) {
        throw Exception("Test failed!")
    }
}

func test_is_full_with_one_more_email_5() {
    let sender = EmailClient("sender@example.com", 100)
    let receiver = EmailClient("receiver@example.com", 20)
    if (receiver.is_full_with_one_more_email(20)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_full_with_one_more_email()
    test_is_full_with_one_more_email_2()
    test_is_full_with_one_more_email_3()
    test_is_full_with_one_more_email_4()
    test_is_full_with_one_more_email_5()
}