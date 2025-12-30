func test_add_movie_1() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    if (system.movies.size != 1) {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    if (movie["name"] as String != "Batman") {
        throw Exception("Test failed!")
    }
    if (abs(((movie["price"] as Float64) ?? 0.0) - 49.9) > 0.001) {
        throw Exception("Test failed!")
    }
    if (movie["start_time"] as DateTime != DateTime.parse("2023/01/01 17:05", "yyyy/MM/dd HH:mm")) {
        throw Exception("Test failed!")
    }
    if (movie["end_time"] as DateTime != DateTime.parse("2023/01/01 19:25", "yyyy/MM/dd HH:mm")) {
        throw Exception("Test failed!")
    }
    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats.size != 3) {
        throw Exception("Test failed!")
    }
    for (row in seats) {
        if (row.size != 3) {
            throw Exception("Test failed!")
        }
    }
}

func test_add_movie_2() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    system.add_movie("Superman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    if (system.movies.size != 2) {
        throw Exception("Test failed!")
    }
    if (system.movies[0]["name"] as String != "Batman") {
        throw Exception("Test failed!")
    }
    if (system.movies[1]["name"] as String != "Superman") {
        throw Exception("Test failed!")
    }
}

func test_add_movie_3() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 39.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    if (system.movies.size != 1) {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    if (movie["name"] as String != "Batman") {
        throw Exception("Test failed!")
    }
    if (abs(((movie["price"] as Float64) ?? 0.0) - 39.9) > 0.001) {
        throw Exception("Test failed!")
    }
    if (movie["start_time"] as DateTime != DateTime.parse("2023/01/01 17:05", "yyyy/MM/dd HH:mm")) {
        throw Exception("Test failed!")
    }
    if (movie["end_time"] as DateTime != DateTime.parse("2023/01/01 19:25", "yyyy/MM/dd HH:mm")) {
        throw Exception("Test failed!")
    }
    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats.size != 3) {
        throw Exception("Test failed!")
    }
    for (row in seats) {
        if (row.size != 3) {
            throw Exception("Test failed!")
        }
    }
}

func test_add_movie_4() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 29.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    if (system.movies.size != 1) {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    if (movie["name"] as String != "Batman") {
        throw Exception("Test failed!")
    }
    if (abs(((movie["price"] as Float64) ?? 0.0) - 29.9) > 0.001) {
        throw Exception("Test failed!")
    }
    if (movie["start_time"] as DateTime != DateTime.parse("2023/01/01 17:05", "yyyy/MM/dd HH:mm")) {
        throw Exception("Test failed!")
    }
    if (movie["end_time"] as DateTime != DateTime.parse("2023/01/01 19:25", "yyyy/MM/dd HH:mm")) {
        throw Exception("Test failed!")
    }
    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats.size != 3) {
        throw Exception("Test failed!")
    }
    for (row in seats) {
        if (row.size != 3) {
            throw Exception("Test failed!")
        }
    }
}

func test_add_movie_5() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 19.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    if (system.movies.size != 1) {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    if (movie["name"] as String != "Batman") {
        throw Exception("Test failed!")
    }
    if (abs(((movie["price"] as Float64) ?? 0.0) - 19.9) > 0.001) {
        throw Exception("Test failed!")
    }
    if (movie["start_time"] as DateTime != DateTime.parse("2023/01/01 17:05", "yyyy/MM/dd HH:mm")) {
        throw Exception("Test failed!")
    }
    if (movie["end_time"] as DateTime != DateTime.parse("2023/01/01 19:25", "yyyy/MM/dd HH:mm")) {
        throw Exception("Test failed!")
    }
    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats.size != 3) {
        throw Exception("Test failed!")
    }
    for (row in seats) {
        if (row.size != 3) {
            throw Exception("Test failed!")
        }
    }
}

main() {
    test_add_movie_1()
    test_add_movie_2()
    test_add_movie_3()
    test_add_movie_4()
    test_add_movie_5()
}