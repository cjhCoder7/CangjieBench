import std.collection.HashMap
import std.collection.ArrayList

func test_main() {
    let select_result = SQLQueryBuilder.select("users", columns: ArrayList<String>(["id", "name"]), where_condition: HashMap<String, String>([("age", "30")]))
    if (select_result != "SELECT id, name FROM users WHERE age='30'") {
        throw Exception("Test failed!")
    }
    
    let insert_data = HashMap<String, String>()
    insert_data["name"] = "Tom"
    insert_data["age"] = "30"
    let insert_result = SQLQueryBuilder.insert("users", insert_data)
    if (insert_result != "INSERT INTO users (name, age) VALUES ('Tom', '30')") {
        throw Exception("Test failed!")
    }
    
    let delete_where = HashMap<String, String>()
    delete_where["name"] = "Tom"
    let delete_result = SQLQueryBuilder.delete("users", where_condition: delete_where)
    if (delete_result != "DELETE FROM users WHERE name='Tom'") {
        throw Exception("Test failed!")
    }
    
    let update_set = HashMap<String, String>()
    update_set["age"] = "35"
    let update_where = HashMap<String, String>()
    update_where["name"] = "Tom"
    let update_result = SQLQueryBuilder.update("users", update_set, where_condition: update_where)
    if (update_result != "UPDATE users SET age='35' WHERE name='Tom'") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
