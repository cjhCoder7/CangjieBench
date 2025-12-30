func test_delete() {
    let sql = SQLGenerator("table1")
    let result = sql.delete("field1 = value1")
    if (result != "DELETE FROM table1 WHERE field1 = value1;") {
        throw Exception("Test failed!")
    }
}

func test_delete_2() {
    let sql = SQLGenerator("table1")
    let result = sql.delete("field1 = value1 AND field2 = value2")
    if (result != "DELETE FROM table1 WHERE field1 = value1 AND field2 = value2;") {
        throw Exception("Test failed!")
    }
}

func test_delete_3() {
    let sql = SQLGenerator("table1")
    let result = sql.delete("field1 = value1 AND field2 = value2 AND field3 = value3")
    if (result != "DELETE FROM table1 WHERE field1 = value1 AND field2 = value2 AND field3 = value3;") {
        throw Exception("Test failed!")
    }
}

func test_delete_4() {
    let sql = SQLGenerator("table1")
    let result = sql.delete("field1 = value1 AND field2 = value2 AND field3 = value3 AND field4 = value4")
    if (result != "DELETE FROM table1 WHERE field1 = value1 AND field2 = value2 AND field3 = value3 AND field4 = value4;") {
        throw Exception("Test failed!")
    }
}

func test_delete_5() {
    let sql = SQLGenerator("table1")
    let result = sql.delete("field1 = value1 AND field2 = value2 AND field3 = value3 AND field4 = value4 AND field5 = value5")
    if (result != "DELETE FROM table1 WHERE field1 = value1 AND field2 = value2 AND field3 = value3 AND field4 = value4 AND field5 = value5;") {
        throw Exception("Test failed!")
    }
}

main() {
    test_delete()
    test_delete_2()
    test_delete_3()
    test_delete_4()
    test_delete_5()
}