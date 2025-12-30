import std.collection.ArrayList
import std.time.DateTime

class Course <: Equatable<Course> {

    /*
    This is a class representing a course, containing the name of the course and its start and end times.
    It supports equality comparison to check if two courses are identical in terms of name and time.
    */

    let name: String
    let start_time: String
    let end_time: String

    public init(name: String, start_time: String, end_time: String) {
        /*
        Initialize a course with its name and time range.
        :param name: String, the name of the course
        :param start_time: String, the start time of the course in format 'yyyy/MM/dd HH:mm'
        :param end_time: String, the end time of the course in format 'yyyy/MM/dd HH:mm'
        */
        this.name = name
        this.start_time = start_time
        this.end_time = end_time
    }

    public override operator func != (that: Course): Bool {
        /*
        Check if this course is not equal to another course.
        Two courses are considered different if any of their name, start time or end time differs.
        :param that: Course, the course to compare with
        :return: true if the courses differ in name, start time or end time; false otherwise
        */
        return this.name != that.name || this.start_time != that.start_time || this.end_time != that.end_time
    }

    public override operator func == (that: Course): Bool {
        /*
        Check if this course is equal to another course.
        Two courses are considered equal if they have the same name, start time and end time.
        :param that: Course, the course to compare with
        :return: true if the courses have the same name, start time and end time; false otherwise
        */
        return this.name == that.name && this.start_time == that.start_time && this.end_time == that.end_time
    }
}

class Classroom {

    /*
    This is a class representing a classroom, capable of adding and removing courses, checking availability at a given time, and detecting conflicts when scheduling new courses.
    */

    let id: Int64
    let courses: ArrayList<Course>

    public init(id: Int64) {
        /*
        Initialize the classroom management system.
        :param id: Int64, the id of classroom
        */
        this.id = id
        this.courses = ArrayList<Course>()
    }

    public func add_course(course: Course): Unit {
        /*
        Add course to this.courses list if the course wasn't in it.
        :param course: Course, information of the course, including 'start_time', 'end_time' and 'name'
        >>> classroom = Classroom(1)
        >>> classroom.add_course({'name': 'math', 'start_time': '2023/09/01 08:00', 'end_time': '2023/09/01 09:40'})
        */
        
    }

    public func remove_course(course: Course): Unit {
        /*
        Remove course from this.courses list if the course was in it.
        :param course: Course, information of the course, including 'start_time', 'end_time' and 'name'
        >>> classroom = Classroom(1)
        >>> classroom.add_course({'name': 'math', 'start_time': '2023/09/01 08:00', 'end_time': '2023/09/01 09:40'})
        >>> classroom.remove_course({'name': 'math', 'start_time': '2023/09/01 08:00', 'end_time': '2023/09/01 09:40'})
        */

    }

    public func is_free_at(check_time: String): Bool {
        /*
        change the time format as 'yyyy/MM/dd HH:mm' and check the time is free or not in the classroom.
        :param check_time: String, the time need to be checked
        :return: true if the check_time does not conflict with every course time, or false otherwise.
        >>> classroom = Classroom(1)
        >>> classroom.add_course({'name': 'math', 'start_time': '2023/09/01 08:00', 'end_time': '2023/09/01 09:40'})
        >>> classroom.is_free_at('2023/09/01 10:00')
        true
        >>> classroom.is_free_at('2023/09/01 09:00')
        false
        */

    }

    public func check_course_conflict(new_course: Course): Bool {
        /*
        Before adding a new course, check if the new course time conflicts with any other course.
        :param new_course: Course, information of the course, including 'start_time', 'end_time' and 'name'
        :return: false if the new course time conflicts(including two courses have the same boundary time) with other courses, or true otherwise.
        >>> classroom = Classroom(1)
        >>> classroom.add_course({'name': 'math', 'start_time': '2023/09/01 08:00', 'end_time': '2023/09/01 09:40'})
        >>> classroom.check_course_conflict({'name': 'SE', 'start_time': '2023/09/01 09:40', 'end_time': '2023/09/01 10:40'})
        false
        */

    }
}
