func test_delete_1() {
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "Tom"
    let result = SQLQueryBuilder.delete("users", where_condition: where_condition)
    if (result != "DELETE FROM users WHERE name='Tom'") {
        throw Exception("Test failed!")
    }
}

func test_delete_2() {
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "Tom"
    let result = SQLQueryBuilder.delete("students", where_condition: where_condition)
    if (result != "DELETE FROM students WHERE name='Tom'") {
        throw Exception("Test failed!")
    }
}

func test_delete_3() {
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "apple"
    let result = SQLQueryBuilder.delete("items", where_condition: where_condition)
    if (result != "DELETE FROM items WHERE name='apple'") {
        throw Exception("Test failed!")
    }
}

func test_delete_4() {
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "aaa"
    let result = SQLQueryBuilder.delete("items", where_condition: where_condition)
    if (result != "DELETE FROM items WHERE name='aaa'") {
        throw Exception("Test failed!")
    }
}

func test_delete_5() {
    let where_condition = HashMap<String, String>()
    where_condition["name"] = "bbb"
    let result = SQLQueryBuilder.delete("items", where_condition: where_condition)
    if (result != "DELETE FROM items WHERE name='bbb'") {
        throw Exception("Test failed!")
    }
}

func test_delete_6() {
    let result = SQLQueryBuilder.delete("items")
    if (result != "DELETE FROM items") {
        throw Exception("Test failed!")
    }
}

main() {
    test_delete_1()
    test_delete_2()
    test_delete_3()
    test_delete_4()
    test_delete_5()
    test_delete_6()
}