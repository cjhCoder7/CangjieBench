import std.collection.HashMap

func test_check_out_1() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms

    hotel.check_out("single", 1)
    let expected_available = HashMap<String, Int64>([("single", 4), ("double", 2)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 2
    var double_guests = HashMap<String, Int64>()
    double_guests["guest 2"] = 1
    expected_booked["single"] = single_guests
    expected_booked["double"] = double_guests
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
}

func test_check_out_2() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms
    
    hotel.check_out("single", 3)
    let expected_available = HashMap<String, Int64>([("single", 6), ("double", 2)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 2
    var double_guests = HashMap<String, Int64>()
    double_guests["guest 2"] = 1
    expected_booked["single"] = single_guests
    expected_booked["double"] = double_guests
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
}

func test_check_out_3() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms
    
    hotel.check_out("triple", 2)
    let expected_available = HashMap<String, Int64>([("single", 3), ("double", 2), ("triple", 2)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 2
    var double_guests = HashMap<String, Int64>()
    double_guests["guest 2"] = 1
    expected_booked["single"] = single_guests
    expected_booked["double"] = double_guests
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
}

func test_check_out_4() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms
    
    hotel.check_out("double", 1)
    let expected_available = HashMap<String, Int64>([("single", 3), ("double", 3)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 2
    var double_guests = HashMap<String, Int64>()
    double_guests["guest 2"] = 1
    expected_booked["single"] = single_guests
    expected_booked["double"] = double_guests
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
}

func test_check_out_5() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms
    
    hotel.check_out("double", 2)
    let expected_available = HashMap<String, Int64>([("single", 3), ("double", 4)])
    if (hotel.available_rooms != expected_available) {
        throw Exception("Test failed!")
    }
    let expected_booked = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 2
    var double_guests = HashMap<String, Int64>()
    double_guests["guest 2"] = 1
    expected_booked["single"] = single_guests
    expected_booked["double"] = double_guests
    if (hotel.booked_rooms != expected_booked) {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_out_1()
    test_check_out_2()
    test_check_out_3()
    test_check_out_4()
    test_check_out_5()
}
