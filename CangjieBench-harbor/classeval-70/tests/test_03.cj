func test_PersonRequest() {
    var pr = PersonRequest("", "Man", "12345678901")
    if (pr.name != None) {
        throw Exception("Test failed!")
    }

    pr = PersonRequest("John Doe", "Unknown", "12345678901")
    if (pr.sex != None) {
        throw Exception("Test failed!")
    }

    pr = PersonRequest("John Doe", "Man", "")
    if (pr.phoneNumber != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_PersonRequest()
}
