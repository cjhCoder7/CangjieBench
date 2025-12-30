func test_main() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    if (system.movies.size != 1) {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    if ((movie["name"] as String) != "Batman") {
        throw Exception("Test failed!")
    }
    if (abs(((movie["price"] as Float64) ?? 0.0) - 49.9) > 0.001) {
        throw Exception("Test failed!")
    }
    if ((movie["start_time"] as DateTime) != DateTime.parse("2023/01/01 17:05", "yyyy/MM/dd HH:mm")) {
        throw Exception("Test failed!")
    }
    if ((movie["end_time"] as DateTime) != DateTime.parse("2023/01/01 19:25", "yyyy/MM/dd HH:mm")) {
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

    let result = system.book_ticket("Batman", ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([2, 2])]))
    if (result != "Booking success.") {
        throw Exception("Test failed!")
    }
    let seats_ = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats_[0][0] != 1) {
        throw Exception("Test failed!")
    }
    if (seats_[1][1] != 1) {
        throw Exception("Test failed!")
    }
    if (seats_[2][2] != 1) {
        throw Exception("Test failed!")
    }

    let available_result = system.available_movies("2023/01/01 16:00", "2023/01/01 23:00")
    let expected = ArrayList<String>(["Batman"])
    if (available_result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}