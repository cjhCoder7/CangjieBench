func test_select_by_age_range() {
    let sql = SQLGenerator("table1")
    let result = sql.select_by_age_range(20, 30)
    if (result != "SELECT * FROM table1 WHERE age BETWEEN 20 AND 30;") {
        throw Exception("Test failed!")
    }
}

func test_select_by_age_range_2() {
    let sql = SQLGenerator("table1")
    let result = sql.select_by_age_range(10, 20)
    if (result != "SELECT * FROM table1 WHERE age BETWEEN 10 AND 20;") {
        throw Exception("Test failed!")
    }
}

func test_select_by_age_range_3() {
    let sql = SQLGenerator("table1")
    let result = sql.select_by_age_range(30, 40)
    if (result != "SELECT * FROM table1 WHERE age BETWEEN 30 AND 40;") {
        throw Exception("Test failed!")
    }
}

func test_select_by_age_range_4() {
    let sql = SQLGenerator("table1")
    let result = sql.select_by_age_range(40, 50)
    if (result != "SELECT * FROM table1 WHERE age BETWEEN 40 AND 50;") {
        throw Exception("Test failed!")
    }
}

func test_select_by_age_range_5() {
    let sql = SQLGenerator("table1")
    let result = sql.select_by_age_range(50, 60)
    if (result != "SELECT * FROM table1 WHERE age BETWEEN 50 AND 60;") {
        throw Exception("Test failed!")
    }
}

main() {
    test_select_by_age_range()
    test_select_by_age_range_2()
    test_select_by_age_range_3()
    test_select_by_age_range_4()
    test_select_by_age_range_5()
}