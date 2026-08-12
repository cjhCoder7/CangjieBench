import std.time.DateTime
import std.collection.ArrayList

func test_is_available() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let result = calendar.is_available(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0))
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_is_available_2() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let result = calendar.is_available(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 2, minute: 0))
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_is_available_3() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let result = calendar.is_available(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 30))
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_is_available_4() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let result = calendar.is_available(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 30), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0))
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_is_available_5() {
    let calendar = CalendarUtil()
    calendar.events.add(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), "New Year"))
    let result = calendar.is_available(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 30))
    if (result != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_is_available()
    test_is_available_2()
    test_is_available_3()
    test_is_available_4()
    test_is_available_5()
}
