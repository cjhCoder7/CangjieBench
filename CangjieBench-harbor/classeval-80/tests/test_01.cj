import std.collection.HashMap
import std.collection.ArrayList

func test_insert_1() {
    let data = HashMap<String, String>()
    data["name"] = "Tom"
    data["age"] = "30"
    let result = SQLQueryBuilder.insert("users", data)
    if (result != "INSERT INTO users (name, age) VALUES ('Tom', '30')") {
        throw Exception("Test failed!")
    }
}

func test_insert_2() {
    let data = HashMap<String, String>()
    data["name"] = "Tom"
    data["age"] = "18"
    let result = SQLQueryBuilder.insert("students", data)
    if (result != "INSERT INTO students (name, age) VALUES ('Tom', '18')") {
        throw Exception("Test failed!")
    }
}

func test_insert_3() {
    let data = HashMap<String, String>()
    data["name"] = "apple"
    data["price"] = "1.0"
    let result = SQLQueryBuilder.insert("items", data)
    if (result != "INSERT INTO items (name, price) VALUES ('apple', '1.0')") {
        throw Exception("Test failed!")
    }
}

func test_insert_4() {
    let data = HashMap<String, String>()
    data["name"] = "Tom"
    let result = SQLQueryBuilder.insert("users", data)
    if (result != "INSERT INTO users (name) VALUES ('Tom')") {
        throw Exception("Test failed!")
    }
}

func test_insert_5() {
    let data = HashMap<String, String>()
    data["name"] = "Tom"
    data["age"] = "30"
    data["region"] = "USA"
    let result = SQLQueryBuilder.insert("users", data)
    if (result != "INSERT INTO users (name, age, region) VALUES ('Tom', '30', 'USA')") {
        throw Exception("Test failed!")
    }
}

main() {
    test_insert_1()
    test_insert_2()
    test_insert_3()
    test_insert_4()
    test_insert_5()
}
