func test_update_1() {
    let set_data = HashMap<String, String>()
    set_data["age"] = "35"
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "Tom"
    let result = SQLQueryBuilder.update("users", set_data, where_condition: where_condition)
    if (result != "UPDATE users SET age='35' WHERE name='Tom'") {
        throw Exception("Test failed!")
    }
}

func test_update_2() {
    let set_data = HashMap<String, String>()
    set_data["age"] = "18"
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "Tom"
    let result = SQLQueryBuilder.update("students", set_data, where_condition: where_condition)
    if (result != "UPDATE students SET age='18' WHERE name='Tom'") {
        throw Exception("Test failed!")
    }
}

func test_update_3() {
    let set_data = HashMap<String, String>()
    set_data["price"] = "1.0"
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "apple"
    let result = SQLQueryBuilder.update("items", set_data, where_condition: where_condition)
    if (result != "UPDATE items SET price='1.0' WHERE name='apple'") {
        throw Exception("Test failed!")
    }
}

func test_update_4() {
    let set_data = HashMap<String, String>()
    set_data["price"] = "1.0"
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "aaa"
    let result = SQLQueryBuilder.update("items", set_data, where_condition: where_condition)
    if (result != "UPDATE items SET price='1.0' WHERE name='aaa'") {
        throw Exception("Test failed!")
    }
}

func test_update_5() {
    let set_data = HashMap<String, String>()
    set_data["price"] = "1.0"
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "bbb"
    let result = SQLQueryBuilder.update("items", set_data, where_condition: where_condition)
    if (result != "UPDATE items SET price='1.0' WHERE name='bbb'") {
        throw Exception("Test failed!")
    }
}

func test_update_6() {
    let set_data = HashMap<String, String>()
    set_data["price"] = "1.0"
    let result = SQLQueryBuilder.update("items", set_data)
    if (result != "UPDATE items SET price='1.0'") {
        throw Exception("Test failed!")
    }
}

main() {
    test_update_1()
    test_update_2()
    test_update_3()
    test_update_4()
    test_update_5()
    test_update_6()
}