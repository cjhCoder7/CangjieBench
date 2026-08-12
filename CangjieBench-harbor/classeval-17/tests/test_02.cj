import std.time.DateTime
import std.collection.ArrayList

func test_get_events() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let result = calendar.get_events(DateTime.of(year: 2023, month: 1, dayOfMonth: 1))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_events_2() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let result = calendar.get_events(DateTime.of(year: 2023, month: 1, dayOfMonth: 2))
    let expected = ArrayList<Event>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_events()
    test_get_events_2()
}
