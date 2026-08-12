import std.time.DateTime
import std.collection.ArrayList

func test_remove_event() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    calendar.remove_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_event_2() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), "New Year"))
    calendar.remove_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_event_3() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), "New Year"))
    calendar.remove_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_event_4() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), "New Year"))
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), "New Year"))
    calendar.remove_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_event_5() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 22, minute: 0), "New Year"))
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), "New Year"))
    calendar.remove_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 1, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    expected.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 22, minute: 0), "New Year"))
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_event_6() {
    let calendar = CalendarUtil()
    calendar.remove_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let expected = ArrayList<Event>()
    if (calendar.events != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_remove_event()
    test_remove_event_2()
    test_remove_event_3()
    test_remove_event_4()
    test_remove_event_5()
    test_remove_event_6()
}
