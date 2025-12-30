func test_get_available_slots() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), "New Year"))
    let result = calendar.get_available_slots(DateTime.of(year: 2023, month: 1, dayOfMonth: 1))
    let expected = ArrayList<(DateTime, DateTime)>()
    expected.add((DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0)))
    if (result.size != expected.size) {
        throw Exception("Test failed!")
    }
    if (result[0][0] != expected[0][0] || result[0][1] != expected[0][1]) {
        throw Exception("Test failed!")
    }
}

func test_get_available_slots_2() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 2, minute: 0), "New Year"))
    let result = calendar.get_available_slots(DateTime.of(year: 2023, month: 1, dayOfMonth: 1))
    if (result.size != 23) {
        throw Exception("Test failed!")
    }
}

func test_get_available_slots_3() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 2, minute: 0), "New Year"))
    let result = calendar.get_available_slots(DateTime.of(year: 2023, month: 1, dayOfMonth: 1))
    if (result.size != 24) {
        throw Exception("Test failed!")
    }
}

func test_get_available_slots_4() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 2, minute: 0), "New Year"))
    let result = calendar.get_available_slots(DateTime.of(year: 2023, month: 1, dayOfMonth: 1))
    if (result.size != 24) {
        throw Exception("Test failed!")
    }
}

func test_get_available_slots_5() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 2, minute: 0), "New Year"))
    let result = calendar.get_available_slots(DateTime.of(year: 2023, month: 1, dayOfMonth: 1))
    if (result.size != 24) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_available_slots()
    test_get_available_slots_2()
    test_get_available_slots_3()
    test_get_available_slots_4()
    test_get_available_slots_5()
}