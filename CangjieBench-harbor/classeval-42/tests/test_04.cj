import std.collection.HashMap

func test_main() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))

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

    hotel.check_in("single", 2, "guest 1")
    let expected_booked2 = HashMap<String, HashMap<String, Int64>>()
    var guest_map2 = HashMap<String, Int64>()
    expected_booked2["single"] = guest_map2
    if (hotel.booked_rooms != expected_booked2) {
        throw Exception("Test failed!")
    }
    
    let expected_available2 = HashMap<String, Int64>([("single", 1), ("double", 2)])
    if (hotel.available_rooms != expected_available2) {
        throw Exception("Test failed!")
    }

    hotel.check_out("single", 2)
    let expected_available3 = HashMap<String, Int64>([("single", 3), ("double", 2)])
    if (hotel.available_rooms != expected_available3) {
        throw Exception("Test failed!")
    }

    if (hotel.get_available_rooms("single") != 3) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
