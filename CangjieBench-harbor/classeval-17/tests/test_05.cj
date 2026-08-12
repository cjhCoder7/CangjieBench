import std.time.DateTime
import std.collection.ArrayList

func test_get_upcoming_events() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), "New Year"))
    let result = calendar.get_upcoming_events(1)
    let expected = ArrayList<Event>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_upcoming_events_2() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 2, minute: 0), "New Year"))
    let result = calendar.get_upcoming_events(1)
    let expected = ArrayList<Event>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_upcoming_events_3() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 2, minute: 0), "New Year"))
    let result = calendar.get_upcoming_events(1)
    let expected = ArrayList<Event>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_upcoming_events_4() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 2, minute: 0), "New Year"))
    let result = calendar.get_upcoming_events(2)
    let expected = ArrayList<Event>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_upcoming_events_5() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), "New Year"))
    calendar.events.add(Event(DateTime.of(year: 2024, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2024, month: 1, dayOfMonth: 2, hour: 1, minute: 0), DateTime.of(year: 2024, month: 1, dayOfMonth: 2, hour: 2, minute: 0), "New Year 2"))
    calendar.events.add(Event(DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 0, minute: 0), DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 1, minute: 0), DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 2, minute: 0), "New Year 3"))
    let result = calendar.get_upcoming_events(1)
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 0, minute: 0), DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 1, minute: 0), DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 2, minute: 0), "New Year 3"))
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_upcoming_events()
    test_get_upcoming_events_2()
    test_get_upcoming_events_3()
    test_get_upcoming_events_4()
    test_get_upcoming_events_5()
}
