import std.collection.ArrayList
import std.collection.HashMap

func test_update() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "new_value1"
    data["field2"] = "new_value2"
    let result = sql.update(data, "field3 = value1")
    if (result != "UPDATE table1 SET field1 = 'new_value1', field2 = 'new_value2' WHERE field3 = value1;") {
        throw Exception("Test failed!")
    }
}

func test_update_2() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "new_value1"
    data["field2"] = "new_value2"
    data["field3"] = "new_value3"
    let result = sql.update(data, "field4 = value1")
    if (result != "UPDATE table1 SET field1 = 'new_value1', field2 = 'new_value2', field3 = 'new_value3' WHERE field4 = value1;") {
        throw Exception("Test failed!")
    }
}

func test_update_3() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "new_value1"
    data["field2"] = "new_value2"
    data["field3"] = "new_value3"
    data["field4"] = "new_value4"
    let result = sql.update(data, "field5 = value1")
    if (result != "UPDATE table1 SET field1 = 'new_value1', field2 = 'new_value2', field3 = 'new_value3', field4 = 'new_value4' WHERE field5 = value1;") {
        throw Exception("Test failed!")
    }
}

func test_update_4() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "new_value1"
    data["field2"] = "new_value2"
    data["field3"] = "new_value3"
    data["field4"] = "new_value4"
    data["field5"] = "new_value5"
    let result = sql.update(data, "field6 = value1")
    if (result != "UPDATE table1 SET field1 = 'new_value1', field2 = 'new_value2', field3 = 'new_value3', field4 = 'new_value4', field5 = 'new_value5' WHERE field6 = value1;") {
        throw Exception("Test failed!")
    }
}

func test_update_5() {
    let sql = SQLGenerator("table1")
    var data = HashMap<String, String>()
    data["field1"] = "new_value1"
    data["field2"] = "new_value2"
    data["field3"] = "new_value3"
    data["field4"] = "new_value4"
    data["field5"] = "new_value5"
    data["field6"] = "new_value6"
    let result = sql.update(data, "field7 = value1")
    if (result != "UPDATE table1 SET field1 = 'new_value1', field2 = 'new_value2', field3 = 'new_value3', field4 = 'new_value4', field5 = 'new_value5', field6 = 'new_value6' WHERE field7 = value1;") {
        throw Exception("Test failed!")
    }
}

main() {
    test_update()
    test_update_2()
    test_update_3()
    test_update_4()
    test_update_5()
}
