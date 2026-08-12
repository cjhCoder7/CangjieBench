#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList
import std.time.DateTime

class Course <: Equatable<Course> {

    let name: String
    let start_time: String
    let end_time: String

    public init(name: String, start_time: String, end_time: String) {
        this.name = name
        this.start_time = start_time
        this.end_time = end_time
    }

    public override operator func != (that: Course): Bool {
        return this.name != that.name || this.start_time != that.start_time || this.end_time != that.end_time
    }

    public override operator func == (that: Course): Bool {
        return this.name == that.name && this.start_time == that.start_time && this.end_time == that.end_time
    }
}

class Classroom {

    let id: Int64
    let courses: ArrayList<Course>

    public init(id: Int64) {
        this.id = id
        this.courses = ArrayList<Course>()
    }

    public func add_course(course: Course): Unit {
        if (!this.courses.contains(course)) {
            this.courses.add(course)
        }
    }

    public func remove_course(course: Course): Unit {
        if (this.courses.contains(course)) {
            this.courses.removeIf({c: Course => c == course})
        }
    }

    public func is_free_at(check_time: String): Bool {
        let check_time_ = DateTime.parse(check_time, "yyyy/MM/dd HH:mm")

        for (course in courses) {
            if (check_time_ >= DateTime.parse(course.start_time, "yyyy/MM/dd HH:mm") && check_time_ <= DateTime.parse(course.end_time, "yyyy/MM/dd HH:mm")) {
                return false
            }
        }

        return true
    }

    public func check_course_conflict(new_course: Course): Bool {
        let new_start_time = DateTime.parse(new_course.start_time, "yyyy/MM/dd HH:mm")
        let new_end_time = DateTime.parse(new_course.end_time, "yyyy/MM/dd HH:mm")

        var flag = true
        for (course in courses) {
            let start_time = DateTime.parse(course.start_time, "yyyy/MM/dd HH:mm")
            let end_time = DateTime.parse(course.end_time, "yyyy/MM/dd HH:mm")
            if (new_start_time >= start_time && new_start_time <= end_time) {
                flag = false
            }
            if (new_end_time >= start_time && new_end_time <= end_time) {
                flag = false
            }
        }
        return flag
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
