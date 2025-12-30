func test_check_in_1() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms

    hotel.check_in("single", 1, "guest 1")
    let expected = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 1
    var double_guests = HashMap<String, Int64>()
    double_guests["guest 2"] = 1
    expected["single"] = single_guests
    expected["double"] = double_guests
    if (hotel.booked_rooms != expected) {
        throw Exception("Test failed!")
    }
}

func test_check_in_2() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms

    if (hotel.check_in("single", 3, "guest 1")) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 2
    var double_guests = HashMap<String, Int64>()
    double_guests["guest 2"] = 1
    expected["single"] = single_guests
    expected["double"] = double_guests
    if (hotel.booked_rooms != expected) {
        throw Exception("Test failed!")
    }
}

func test_check_in_3() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms
    
    if (hotel.check_in("double", 1, "guest 1")) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 2
    var double_guests = HashMap<String, Int64>()
    double_guests["guest 2"] = 1
    expected["single"] = single_guests
    expected["double"] = double_guests
    if (hotel.booked_rooms != expected) {
        throw Exception("Test failed!")
    }
}

func test_check_in_4() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms

    hotel.check_in("double", 1, "guest 2")
    let expected = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 2
    var double_guests = HashMap<String, Int64>()
    expected["single"] = single_guests
    expected["double"] = double_guests
    if (hotel.booked_rooms != expected) {
        throw Exception("Test failed!")
    }
}

func test_check_in_5() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms
    
    hotel.check_in("double", 2, "guest 2")
    let expected = HashMap<String, HashMap<String, Int64>>()
    var single_guests = HashMap<String, Int64>()
    single_guests["guest 1"] = 2
    var double_guests = HashMap<String, Int64>()
    double_guests["guest 2"] = 1
    expected["single"] = single_guests
    expected["double"] = double_guests
    if (hotel.booked_rooms != expected) {
        throw Exception("Test failed!")
    }
}

func test_check_in_6() {
    let hotel = Hotel("Test Hotel", HashMap<String, Int64>([("single", 3), ("double", 2)]))
    var booked_rooms = HashMap<String, HashMap<String, Int64>>()
    var single_guests_ = HashMap<String, Int64>()
    single_guests_["guest 1"] = 2
    var double_guests_ = HashMap<String, Int64>()
    double_guests_["guest 2"] = 1
    booked_rooms["single"] = single_guests_
    booked_rooms["double"] = double_guests_
    hotel.booked_rooms = booked_rooms
    
    let res = hotel.check_in("abc", 1, "guest 1")
    if (res) {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_in_1()
    test_check_in_2()
    test_check_in_3()
    test_check_in_4()
    test_check_in_5()
    test_check_in_6()
}