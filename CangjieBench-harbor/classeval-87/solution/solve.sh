#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.time.DateTime
import std.math.round

class TimeUtils {

    let datetime: DateTime

    public init() {
        this.datetime = DateTime.now()
    }

    public func get_current_time(): String {
        let format = "HH:mm:ss"
        return this.datetime.format(format)
    }

    public func get_current_date(): String {
        let format = "yyyy-MM-dd"
        return this.datetime.format(format)
    }

    public func add_seconds(seconds: Int64): String {
        let new_datetime = this.datetime.addSeconds(seconds)
        let format = "HH:mm:ss"
        return new_datetime.format(format)
    }

    public func string_to_datetime(string: String): DateTime {
        return DateTime.parse(string, "yyyy-MM-dd HH:mm:ss")
    }

    public func datetime_to_string(datetime: DateTime): String {
        return datetime.format("yyyy-MM-dd HH:mm:ss")
    }

    public func get_minutes(string_time1: String, string_time2: String): Int64 {
        let time1 = this.string_to_datetime(string_time1)
        let time2 = this.string_to_datetime(string_time2)
        return Int64(round(Float64((time2 - time1).toSeconds()) / 60.0))
    }

    public func get_format_time(year: Int64, month: Int64, day: Int64, hour: Int64, minute: Int64, second: Int64): String {
        let format = "yyyy-MM-dd HH:mm:ss"
        let time_item = DateTime.of(year: year, month: month, dayOfMonth: day, hour: hour, minute: minute, second: second)
        return time_item.format(format)
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
