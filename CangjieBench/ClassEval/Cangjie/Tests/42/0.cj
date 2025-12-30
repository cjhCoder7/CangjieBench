func test_book_room_1() {
    let hotel = Hotel("peace hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    let result = hotel.book_room("single", 2, "guest 1")
    if (result != "Success!") {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    var guest_map = HashMap<String, Int64>()
    guest_map["guest 1"] = 2
    expected_booked["single"] = guest_map
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
    let expected_available = HashMap<String, Int64>([("single", 1), ("double", 2)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
}

func test_book_room_2() {
    let hotel = Hotel("peace hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    let result = hotel.book_room("triple", 2, "guest 1")
    if (result != "false") {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
    let expected_available = HashMap<String, Int64>([("single", 3), ("double", 2)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
}

func test_book_room_3() {
    let hotel = Hotel("peace hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    hotel.book_room("single", 2, "guest 1")
    let result = hotel.book_room("single", 2, "guest 2")
    if (result != "1") {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    var guest_map = HashMap<String, Int64>()
    guest_map["guest 1"] = 2
    expected_booked["single"] = guest_map
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
    let expected_available = HashMap<String, Int64>([("single", 1), ("double", 2)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
}

func test_book_room_4() {
    let hotel = Hotel("peace hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    hotel.book_room("single", 2, "guest 1")
    let result = hotel.book_room("single", 1, "guest 2")
    if (result != "Success!") {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    var guest_map = HashMap<String, Int64>()
    guest_map["guest 1"] = 2
    guest_map["guest 2"] = 1
    expected_booked["single"] = guest_map
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
    let expected_available = HashMap<String, Int64>([("double", 2), ("single", 0)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
}

func test_book_room_5() {
    let hotel = Hotel("peace hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    hotel.book_room("single", 2, "guest 1")
    let result = hotel.book_room("single", 3, "guest 2")
    if (result != "1") {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    var guest_map = HashMap<String, Int64>()
    guest_map["guest 1"] = 2
    expected_booked["single"] = guest_map
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
    let expected_available = HashMap<String, Int64>([("single", 1), ("double", 2)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
}

func test_book_room_6() {
    let hotel = Hotel("peace hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    hotel.book_room("single", 3, "guest 1")
    let result = hotel.book_room("single", 100, "guest 1")
    if (result != "false") {
        throw Exception("Test failed!")
    }
}

main() {
    test_book_room_1()
    test_book_room_2()
    test_book_room_3()
    test_book_room_4()
    test_book_room_5()
    test_book_room_6()
}
