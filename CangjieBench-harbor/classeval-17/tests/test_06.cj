import std.time.DateTime
import std.collection.ArrayList

func test_main() {
    let calendar = CalendarUtil()
    calendar.add_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
    calendar.remove_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let expected2 = ArrayList<Event>()
    if (calendar.events != expected2) {
        throw Exception("Test failed!")
    }
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), "New Year"))
    let result = calendar.get_events(DateTime.of(year: 2023, month: 1, dayOfMonth: 1))
    let expected3 = ArrayList<Event>()
    expected3.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), "New Year"))
    if (result != expected3) {
        throw Exception("Test failed!")
    }
    let result2 = calendar.is_available(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0))
    if (result2 != false) {
        throw Exception("Test failed!")
    }
    let result3 = calendar.get_available_slots(DateTime.of(year: 2023, month: 1, dayOfMonth: 1))
    let expected4 = ArrayList<(DateTime, DateTime)>()
    expected4.add((DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0)))
    if (result3.size != expected4.size) {
        throw Exception("Test failed!")
    }
    if (result3[0][0] != expected4[0][0] || result3[0][1] != expected4[0][1]) {
        throw Exception("Test failed!")
    }
    let result4 = calendar.get_upcoming_events(1)
    let expected5 = ArrayList<Event>()
    if (result4 != expected5) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
