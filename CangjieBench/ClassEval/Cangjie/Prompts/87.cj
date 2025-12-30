import std.time.DateTime
import std.math.round

class TimeUtils {

    /*
    This is a time util class, including getting the current time and date, adding seconds to a datetime, converting between strings and datetime objects, calculating the time difference in minutes, and formatting a datetime object.
    */

    let datetime: DateTime

    public init() {
        /*
        Get the current datetime
        */
        this.datetime = DateTime.now()
    }

    public func get_current_time(): String {
        /*
        Return the current time in the format of 'HH:mm:ss'
        :return: String
        >>> timeutils = TimeUtils()
        >>> timeutils.get_current_time()
        "19:19:22"
        */
        
    }

    public func get_current_date(): String {
        /*
        Return the current date in the format of "yyyy-MM-dd"
        :return: String
        >>> timeutils.get_current_date()
        "2023-06-14"
        */
        
    }

    public func add_seconds(seconds: Int64): String {
        /*
        Add the specified number of seconds to the current time
        :param seconds: Int64, number of seconds to add
        :return: String, time after adding the specified number of seconds in the format 'HH:mm:ss'
        >>> timeutils.add_seconds(600)
        "19:29:22"
        */
        
    }

    public func string_to_datetime(string: String): DateTime {
        /*
        Convert the time string to a datetime instance
        :param string: String, string before converting format
        :return: DateTime
        >>> timeutils.string_to_datetime("2001-07-18 01:01:01")
        2001-07-18 01:01:01
        */
        
    }

    public func datetime_to_string(datetime: DateTime): String {
        /*
        Convert a datetime instance to a string
        :param datetime: the DatetTime instance to convert
        :return: String, converted time string
        >>> timeutils.datetime_to_string(timeutils.datetime)
        "2023-06-14 19:30:03"
        */
        
    }

    public func get_minutes(string_time1: String, string_time2: String): Int64 {
        /*
        Calculate how many minutes have passed between two times, and round the results to the nearest
        :return: Int64, the number of minutes between two times, rounded off
        >>> timeutils.get_minutes("2001-07-18 01:01:01", "2001-07-18 02:01:01")
        60
        */
        
    }

    public func get_format_time(year: Int64, month: Int64, day: Int64, hour: Int64, minute: Int64, second: Int64): String {
        /*
        get format time
        :param year: Int64
        :param month: Int64
        :param day: Int64
        :param hour: Int64
        :param minute: Int64
        :param second: Int64
        :return: formatted time string
        >>> timeutils.get_format_time(2001, 7, 18, 1, 1, 1)
        "2001-07-18 01:01:01"
        */
        
    }
}

