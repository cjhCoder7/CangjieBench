import std.time.DateTime
import std.collection.ArrayList

func test_add_event() {
    let calendar = CalendarUtil()
    calendar.add_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_event_2() {
    let calendar = CalendarUtil()
    calendar.add_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    calendar.add_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_event_3() {
    let calendar = CalendarUtil()
    calendar.add_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_event_4() {
    let calendar = CalendarUtil()
    calendar.add_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 22, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 22, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_event_5() {
    let calendar = CalendarUtil()
    calendar.add_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 20, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 20, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_event()
    test_add_event_2()
    test_add_event_3()
    test_add_event_4()
    test_add_event_5()
}
