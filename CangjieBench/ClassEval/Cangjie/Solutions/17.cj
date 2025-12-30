import std.time.DateTime
import std.collection.ArrayList

class Event <: Equatable<Event> {
    let date: DateTime
    let start_time: DateTime
    let end_time: DateTime
    let description: String

    public init(date: DateTime, start_time: DateTime, end_time: DateTime, description: String) {
        this.date = date
        this.start_time = start_time
        this.end_time = end_time
        this.description = description
    }

    public override operator func != (that: Event): Bool {
        return this.date != that.date || this.start_time != that.start_time || this.end_time != that.end_time || this.description != that.description
    }

    public override operator func == (that: Event): Bool {
        return this.date == that.date && this.start_time == that.start_time && this.end_time == that.end_time && this.description == that.description
    }
}

class CalendarUtil {

    let events: ArrayList<Event>

    public init() {
        this.events = ArrayList<Event>()
    }

    public func add_event(event: Event): Unit {
        this.events.add(event)
    }

    public func remove_event(event: Event): Unit {
        this.events.removeIf({e: Event => return e == event})
    }

    public func get_events(date: DateTime): ArrayList<Event> {
        let events_on_date = ArrayList<Event>()
        for (event in this.events) {
            if (event.date == date) {
                events_on_date.add(event)
            }
        }
        return events_on_date
    }

    public func is_available(start_time: DateTime, end_time: DateTime): Bool {
        for (event in this.events) {
            if (start_time < event.end_time && end_time > event.start_time) {
                return false
            }
        }
        return true
    }

    public func get_available_slots(date: DateTime): ArrayList<(DateTime, DateTime)> {
        let available_slots = ArrayList<(DateTime, DateTime)>()
        var start_time = DateTime.of(year: date.year, month: date.month, dayOfMonth: date.dayOfMonth, hour: 0, minute: 0)
        var end_time = DateTime.of(year: date.year, month: date.month, dayOfMonth: date.dayOfMonth, hour: 23, minute: 59)

        while (start_time < end_time) {
            let slot_end_time = start_time.addMinutes(60)
            if (this.is_available(start_time, slot_end_time)) {
                available_slots.add((start_time, slot_end_time))
            }
            start_time = slot_end_time
        }

        return available_slots
    }

    public func get_upcoming_events(num_events: Int64): ArrayList<Event> {
        let now = DateTime.now()
        let upcoming_events = ArrayList<Event>()
        for (event in this.events) {
            if (event.start_time >= now) {
                upcoming_events.add(event)
            }
            if (upcoming_events.size == num_events) {
                break
            }
        }
        return upcoming_events
    }
}

