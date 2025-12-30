func test_get_available_rooms() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2), ("triple", 2)]))
    let result = hotel.get_available_rooms("single")
    if (result != 3) {
        throw Exception("Test failed!")
    }
}

func test_get_available_rooms_2() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2), ("triple", 2)]))
    hotel.book_room("single", 2, "guest 1")
    let result = hotel.get_available_rooms("single")
    if (result != 1) {
        throw Exception("Test failed!")
    }
}

func test_get_available_rooms_3() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2), ("triple", 2)]))
    hotel.book_room("single", 3, "guest 1")
    let result = hotel.get_available_rooms("single")
    if (result != 0) {
        throw Exception("Test failed!")
    }
}

func test_get_available_rooms_4() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2), ("triple", 2)]))
    hotel.book_room("single", 3, "guest 1")
    let result = hotel.get_available_rooms("double")
    if (result != 2) {
        throw Exception("Test failed!")
    }
}

func test_get_available_rooms_5() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2), ("triple", 2)]))
    hotel.book_room("single", 3, "guest 1")
    let result = hotel.get_available_rooms("triple")
    if (result != 2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_available_rooms()
    test_get_available_rooms_2()
    test_get_available_rooms_3()
    test_get_available_rooms_4()
    test_get_available_rooms_5()
}