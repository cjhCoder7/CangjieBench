func test_book_ticket_1() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    let result = system.book_ticket("Batman", ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([1, 1]), ArrayList<Int64>([2, 2])]))
    if (result != "Booking success.") {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats[0][0] != 1) {
        throw Exception("Test failed!")
    }
    if (seats[1][1] != 1) {
        throw Exception("Test failed!")
    }
    if (seats[2][2] != 1) {
        throw Exception("Test failed!")
    }
}

func test_book_ticket_2() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    system.book_ticket("Batman", ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0])]))
    let result = system.book_ticket("Batman", ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0])]))
    if (result != "Booking failed.") {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats[0][0] != 1) {
        throw Exception("Test failed!")
    }
}

func test_book_ticket_3() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    let result = system.book_ticket("batman", ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0])]))
    if (result != "Movie not found.") {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats[0][0] != 0) {
        throw Exception("Test failed!")
    }
}

func test_book_ticket_4() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    let result = system.book_ticket("Batman", ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0]), ArrayList<Int64>([1, 1])]))
    if (result != "Booking success.") {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats[0][0] != 1) {
        throw Exception("Test failed!")
    }
    if (seats[1][1] != 1) {
        throw Exception("Test failed!")
    }
}

func test_book_ticket_5() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    let result = system.book_ticket("Batman", ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0])]))
    if (result != "Booking success.") {
        throw Exception("Test failed!")
    }
    let movie = system.movies[0]
    let seats = (movie["seats"] as ArrayList<ArrayList<Int64>>) ?? ArrayList<ArrayList<Int64>>()
    if (seats[0][0] != 1) {
        throw Exception("Test failed!")
    }
}

main() {
    test_book_ticket_1()
    test_book_ticket_2()
    test_book_ticket_3()
    test_book_ticket_4()
    test_book_ticket_5()
}