func test_select_female_under_age() {
    let sql = SQLGenerator("table1")
    let result = sql.select_female_under_age(30)
    if (result != "SELECT * FROM table1 WHERE age < 30 AND gender = 'female';") {
        throw Exception("Test failed!")
    }
}

func test_select_female_under_age_2() {
    let sql = SQLGenerator("table1")
    let result = sql.select_female_under_age(40)
    if (result != "SELECT * FROM table1 WHERE age < 40 AND gender = 'female';") {
        throw Exception("Test failed!")
    }
}

func test_select_female_under_age_3() {
    let sql = SQLGenerator("table1")
    let result = sql.select_female_under_age(20)
    if (result != "SELECT * FROM table1 WHERE age < 20 AND gender = 'female';") {
        throw Exception("Test failed!")
    }
}

func test_select_female_under_age_4() {
    let sql = SQLGenerator("table1")
    let result = sql.select_female_under_age(10)
    if (result != "SELECT * FROM table1 WHERE age < 10 AND gender = 'female';") {
        throw Exception("Test failed!")
    }
}

func test_select_female_under_age_5() {
    let sql = SQLGenerator("table1")
    let result = sql.select_female_under_age(50)
    if (result != "SELECT * FROM table1 WHERE age < 50 AND gender = 'female';") {
        throw Exception("Test failed!")
    }
}

main() {
    test_select_female_under_age()
    test_select_female_under_age_2()
    test_select_female_under_age_3()
    test_select_female_under_age_4()
    test_select_female_under_age_5()
}