import std.collection.ArrayList
import std.collection.HashMap

func test_insert() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "value1"
    data["field2"] = "value2"
    let result = sql.insert(data)
    if (result != "INSERT INTO table1 (field1, field2) VALUES ('value1', 'value2');") {
        throw Exception("Test failed!")
    }
}

func test_insert_2() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "value1"
    data["field2"] = "value2"
    data["field3"] = "value3"
    let result = sql.insert(data)
    if (result != "INSERT INTO table1 (field1, field2, field3) VALUES ('value1', 'value2', 'value3');") {
        throw Exception("Test failed!")
    }
}

func test_insert_3() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "value1"
    data["field2"] = "value2"
    data["field3"] = "value3"
    data["field4"] = "value4"
    let result = sql.insert(data)
    if (result != "INSERT INTO table1 (field1, field2, field3, field4) VALUES ('value1', 'value2', 'value3', 'value4');") {
        throw Exception("Test failed!")
    }
}

func test_insert_4() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "value1"
    data["field2"] = "value2"
    data["field3"] = "value3"
    data["field4"] = "value4"
    data["field5"] = "value5"
    let result = sql.insert(data)
    if (result != "INSERT INTO table1 (field1, field2, field3, field4, field5) VALUES ('value1', 'value2', 'value3', 'value4', 'value5');") {
        throw Exception("Test failed!")
    }
}

func test_insert_5() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "value1"
    data["field2"] = "value2"
    data["field3"] = "value3"
    data["field4"] = "value4"
    data["field5"] = "value5"
    data["field6"] = "value6"
    let result = sql.insert(data)
    if (result != "INSERT INTO table1 (field1, field2, field3, field4, field5, field6) VALUES ('value1', 'value2', 'value3', 'value4', 'value5', 'value6');") {
        throw Exception("Test failed!")
    }
}

main() {
    test_insert()
    test_insert_2()
    test_insert_3()
    test_insert_4()
    test_insert_5()
}
