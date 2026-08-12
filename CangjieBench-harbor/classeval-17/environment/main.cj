import std.time.DateTime
import std.collection.ArrayList

class Event <: Equatable<Event> {

    /*
    This is a class as Event that represents a calendar event with date, time range, and description.
    It implements the Equatable interface to support event comparison.
    */

    let date: DateTime
    let start_time: DateTime
    let end_time: DateTime
    let description: String

    public init(date: DateTime, start_time: DateTime, end_time: DateTime, description: String) {
        /*
        Initialize a new Event instance with specified date, time range, and description.
        :param date: The date when the event occurs,DateTime.
        :param start_time: The start time of the event,DateTime.
        :param end_time: The end time of the event,DateTime.
        :param description: The descriptive text of the event,String.
        >>> let event = Event(DateTime.of(year: 2023, month: 12, dayOfMonth: 25, hour: 0, minute: 0), DateTime.of(year: 2023, month: 12, dayOfMonth: 25, hour: 10, minute: 0), DateTime.of(year: 2023, month: 12, dayOfMonth: 25, hour: 12, minute: 0), 'Christmas Party')
        >>> event.description
        'Christmas Party'
        */
        this.date = date
        this.start_time = start_time
        this.end_time = end_time
        this.description = description
    }

    public override operator func != (that: Event): Bool {
        /*
        Check if two events are not equal.
        Two events are considered not equal if any of their date, start_time, end_time, or description differ.
        :param that: The Event to compare with this Event,Event.
        :return: true if the events are not equal, false otherwise,Bool.
        >>> let event1 = Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1), DateTime.of(hour: 10), DateTime.of(hour: 11), 'Event 1')
        >>> let event2 = Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1), DateTime.of(hour: 110), DateTime.of(hour: 111), 'Event 2')
        >>> event1 != event2
        true
        */
        return this.date != that.date || this.start_time != that.start_time || this.end_time != that.end_time || this.description != that.description
    }

    public override operator func == (that: Event): Bool {
        /*
        Check if two events are equal.
        Two events are considered equal if their date, start_time, end_time, and description are all the same.
        :param that: The Event to compare with this Event,Event.
        :return: true if the events are equal, false otherwise,Bool.
        >>> let event1 = Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1), DateTime.of(hour: 10), DateTime.of(hour: 11), 'Event 1')
        >>> let event2 = Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1), DateTime.of(hour: 10), DateTime.of(hour: 11), 'Event 1')
        >>> event1 == event2
        true
        */
        return this.date == that.date && this.start_time == that.start_time && this.end_time == that.end_time && this.description == that.description
    }
}

class CalendarUtil {

    /*
    This is a class as CalendarUtil that provides functionalities to manage calendar events, schedule appointments, and perform conflict checks.
    */

    let events: ArrayList<Event>

    public init() {
        /*
        Initialize the calendar with an empty list of events.
        */
        this.events = ArrayList<Event>()
    }

    public func add_event(event: Event): Unit {
        /*
        Add an event to the calendar.
        :param event: The event to be added to the calendar,Event.
        >>> calendar = CalendarUtil()
        >>> calendar.add_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), 'New Year'))
        >>> calendar.events
        [Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), 'New Year')]

        */
        
    }

    public func remove_event(event: Event): Unit {
        /*
        Remove an event from the calendar.
        :param event: The event to be removed from the calendar,Event.
        >>> calendar = CalendarUtil()
        >>> calendar.events = [Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), 'New Year')]
        >>> calendar.remove_event(Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), 'New Year'))
        >>> calendar.events
        []

        */
        
    }

    public func get_events(date: DateTime): ArrayList<Event> {
        /*
        Get all events on a given date.
        :param date: The date to get events for,DateTime.
        :return: A list of events on the given date,ArrayList<Event>.
        >>> calendar = CalendarUtil()
        >>> calendar.events = [Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), 'New Year')]
        >>> calendar.get_events(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0))
        [Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), 'New Year')]

        */
        
    }

    public func is_available(start_time: DateTime, end_time: DateTime): Bool {
        /*
        Check if the calendar is available for a given time slot.
        :param start_time: The start time of the time slot,DateTime.
        :param end_time: The end time of the time slot,DateTime.
        :return: true if the calendar is available for the given time slot, false otherwise,Bool.
        >>> calendar = CalendarUtil()
        >>> calendar.events = [Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0), 'New Year')]
        >>> calendar.is_available(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 1, minute: 0))
        false

        */
        
    }

    public func get_available_slots(date: DateTime): ArrayList<(DateTime, DateTime)> {
        /*
        Get all available time slots on a given date.
        :param date: The date to get available time slots for,DateTime.
        :return: A list of available time slots on the given date,ArrayList<(DateTime, DateTime)>.
        >>> calendar = CalendarUtil()
        >>> calendar.events = [Event(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 0, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), 'New Year')]
        >>> calendar.get_available_slots(DateTime.of(year: 2023, month: 1, dayOfMonth: 1))
        [(DateTime.of(year: 2023, month: 1, dayOfMonth: 1, hour: 23, minute: 0), DateTime.of(year: 2023, month: 1, dayOfMonth: 2, hour: 0, minute: 0))]

        */

    }

    public func get_upcoming_events(num_events: Int64): ArrayList<Event> {
        /*
        Get the next n upcoming events from a given date.
        :param date: The date to get upcoming events from,DateTime.
        :param n: The number of upcoming events to get,Int64.
        :return: A list of the next n upcoming events from the given date,ArrayList<Event>.
        >>> calendar = CalendarUtil()
        >>> calendar.events = [Event(DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 0, minute: 0), DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 1, minute: 0), DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 2, minute: 0), "New Year 3")]
        >>> calendar.get_upcoming_events(1)
        [Event(DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 0, minute: 0), DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 1, minute: 0), DateTime.of(year: DateTime.now().year+1, month: 1, dayOfMonth: 3, hour: 2, minute: 0), "New Year 3")]

        */
        
    }
}

