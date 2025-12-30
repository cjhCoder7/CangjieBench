func test_select_1() {
    let sql = SQLGenerator("table1")
    let result = sql.select(fields: ArrayList<String>(["field1"]), condition: "field2 = value1")
    if (result != "SELECT field1 FROM table1 WHERE field2 = value1;") {
        throw Exception("Test failed!")
    }
}

func test_select_2() {
    let sql = SQLGenerator("table1")
    let result = sql.select(fields: ArrayList<String>(["field1", "field2"]), condition: "field3 = value1")
    if (result != "SELECT field1, field2 FROM table1 WHERE field3 = value1;") {
        throw Exception("Test failed!")
    }
}

func test_select_3() {
    let sql = SQLGenerator("table1")
    let result = sql.select(fields: ArrayList<String>(["field1, field2"]), condition: "field3 = value1")
    if (result != "SELECT field1, field2 FROM table1 WHERE field3 = value1;") {
        throw Exception("Test failed!")
    }
}

func test_select_4() {
    let sql = SQLGenerator("table1")
    let result = sql.select(fields: ArrayList<String>(["field1, field2"]), condition: "field3 = value1, field4 = value2")
    if (result != "SELECT field1, field2 FROM table1 WHERE field3 = value1, field4 = value2;") {
        throw Exception("Test failed!")
    }
}

func test_select_5() {
    let sql = SQLGenerator("table1")
    let result = sql.select(fields: ArrayList<String>(["field1"]), condition: "field2 = value1, field3 = value2")
    if (result != "SELECT field1 FROM table1 WHERE field2 = value1, field3 = value2;") {
        throw Exception("Test failed!")
    }
}

func test_select_6() {
    let sql = SQLGenerator("table1")
    let result = sql.select(fields: ArrayList<String>(["field1"]))
    if (result != "SELECT field1 FROM table1;") {
        throw Exception("Test failed!")
    }
}

main() {
    test_select_1()
    test_select_2()
    test_select_3()
    test_select_4()
    test_select_5()
    test_select_6()
}