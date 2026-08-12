import std.collection.ArrayList
import std.collection.HashMap

func test_main() {
    let sql = SQLGenerator("table1")
    if (sql.select(fields: ArrayList<String>(["field1", "field2"]), condition: "field3 = value1") != "SELECT field1, field2 FROM table1 WHERE field3 = value1;") {
        throw Exception("Test failed!")
    }
    var insert_data = HashMap<String, String>()
    insert_data["field1"] = "value1"
    insert_data["field2"] = "value2"
    if (sql.insert(insert_data) != "INSERT INTO table1 (field1, field2) VALUES ('value1', 'value2');") {
        throw Exception("Test failed!")
    }
    var update_data = HashMap<String, String>()
    update_data["field1"] = "new_value1"
    update_data["field2"] = "new_value2"
    if (sql.update(update_data, "field3 = value1") != "UPDATE table1 SET field1 = 'new_value1', field2 = 'new_value2' WHERE field3 = value1;") {
        throw Exception("Test failed!")
    }
    if (sql.delete("field1 = value1") != "DELETE FROM table1 WHERE field1 = value1;") {
        throw Exception("Test failed!")
    }
    if (sql.select_female_under_age(30) != "SELECT * FROM table1 WHERE age < 30 AND gender = 'female';") {
        throw Exception("Test failed!")
    }
    if (sql.select_by_age_range(20, 30) != "SELECT * FROM table1 WHERE age BETWEEN 20 AND 30;") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
