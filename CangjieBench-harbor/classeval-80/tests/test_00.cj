import std.collection.HashMap
import std.collection.ArrayList

func test_select_1() {
    let result = SQLQueryBuilder.select("users", columns: ArrayList<String>(["id", "name"]), where_condition: HashMap<String, String>([("age", "30")]))
    if (result != "SELECT id, name FROM users WHERE age='30'") {
        print(result)
        throw Exception("Test failed!")
    }
}

func test_select_2() {
    let result = SQLQueryBuilder.select("students", columns: ArrayList<String>(["id", "name"]), where_condition: HashMap<String, String>([("age", "18")]))
    if (result != "SELECT id, name FROM students WHERE age='18'") {
        throw Exception("Test failed!")
    }
}

func test_select_3() {
    let result = SQLQueryBuilder.select("items", columns: ArrayList<String>(["id", "name"]), where_condition: HashMap<String, String>([("price", "1.0")]))
    if (result != "SELECT id, name FROM items WHERE price='1.0'") {
        throw Exception("Test failed!")
    }
}

func test_select_4() {
    let result = SQLQueryBuilder.select("users", columns: ArrayList<String>(["id"]), where_condition: HashMap<String, String>([("age", "30")]))
    if (result != "SELECT id FROM users WHERE age='30'") {
        throw Exception("Test failed!")
    }
}

func test_select_5() {
    let result = SQLQueryBuilder.select("users", columns: ArrayList<String>(["name"]), where_condition: HashMap<String, String>([("age", "30")]))
    if (result != "SELECT name FROM users WHERE age='30'") {
        throw Exception("Test failed!")
    }
}

func test_select_6() {
    let result = SQLQueryBuilder.select("users", columns: ArrayList<String>(["name"]))
    if (result != "SELECT name FROM users") {
        throw Exception("Test failed!")
    }
}

func test_select_7() {
    let result = SQLQueryBuilder.select("users", columns: ArrayList<String>(["*"]))
    if (result != "SELECT * FROM users") {
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
    test_select_7()
}
