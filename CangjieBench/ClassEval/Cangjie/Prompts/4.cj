import std.collection.HashMap
import std.collection.ArrayList

class Student <: Equatable<Student>{

    /*
    This is a class representing a student with basic information and course scores.
    It implements Equatable<Student> to support comparison between two Student instances.
    */

    let name: String
    let grade: Int64
    let major: String
    let cources: HashMap<String, Int64>

    public init(name: String, grade: Int64, major: String) {
        /*
        Initialize a Student instance.
        :param name: String, the name of the student
        :param grade: Int64, the grade/year of the student
        :param major: String, the major of the student
        */

        this.name = name
        this.grade = grade
        this.major = major
        this.cources = HashMap<String, Int64>()
    }

    public override operator func != (that: Student): Bool {
        /*
        Check if two Student instances are NOT equal.
        Two students are considered not equal if any of their fields differ.
        :param that: Another Student object to compare with
        :return: Bool, true if any field differs; otherwise false
        */

        var flag = false
        if (this.name != that.name) {
            flag = true
        }
        if (this.grade != that.grade) {
            flag = true
        }
        if (this.major != that.major) {
            flag = true
        }
        for ((k, v) in this.cources) {
            if (!that.cources.contains(k)) {
                flag = true
            } else {
                if (v != that.cources[k]) {
                    flag = true
                }
            }
        }
        return flag
    }

    public override operator func == (that: Student): Bool {
        /*
        Check if two Student instances are equal.
        Two students are equal only if all their fields (name, grade, major, and course scores) match exactly.
        :param that: Another Student object to compare with
        :return: Bool, true if all fields match; otherwise false
        */
        
        if (this.name != that.name) {
            return false
        }
        if (this.grade != that.grade) {
            return false
        }
        if (this.major != that.major) {
            return false
        }
        for ((k, v) in this.cources) {
            if (!that.cources.contains(k)) {
                return false
            }
            if (v != that.cources[k]) {
                return false
            }
        }
        return true
    }
}

class AssessmentSystem {

    /*
    This is a class as an student assessment system, which supports add student, add course score, calculate GPA, and other functions for students and courses.
    */

    let students: HashMap<String, Student>

    public init() {
        /*
        Initialize the students dict in assessment system.
        */
        this.students = HashMap<String, Student>()
    }

    public func add_student(name: String, grade: Int64, major: String): Unit {
        /*
        Add a new student into this.students dict
        :param name: String, student name
        :param grade: Int64, student grade
        :param major: String, student major
        >>> system.add_student('student 1', 3, 'SE')
        >>> system.students
        {'student 1': Student('student 1', 3, 'SE')}
        */
        
    }

    public func add_course_score(name: String, course: String, score: Int64): Unit {
        /*
        Add score of specific course for student in this.students
        :param name: String, student name
        :param course: String, cource name
        :param score: Int64, cource score
        >>> system.add_student('student 1', 3, 'SE')
        >>> system.add_course_score('student 1', 'math', 94)
        >>> system.students
        {'student 1': Student('student 1', 3, 'SE', {'math': 94})}
        */
        
    }

    public func get_gpa(name: String): Option<Float64> {
        /*
        Get average grade of one student.
        :param name: String, student name
        :return: if name is in students and this students have courses grade, return average grade(Float64)
                    or None otherwise
        >>> system.add_student('student 1', 3, 'SE')
        >>> system.add_course_score('student 1', 'math', 94)
        >>> system.add_course_score('student 1', 'Computer Network', 92)
        >>> system.get_gpa('student 1')
        93.0

        */

    }

    public func get_all_students_with_fail_course(): ArrayList<String> {
        /*
        Get all students who have any score blow 60
        :return: list of String ,student name
        >>> system.add_course_score('student 1', 'Society', 59)
        >>> system.get_all_students_with_fail_course()
        ['student 1']
        */

    }

    public func get_course_average(course: String): Option<Float64> {
        /*
        Get the average score of a specific course.
        :param course: String, course name
        :return: Float64, average scores of this course if anyone have score of this course, or None if nobody have records.
        Tip: If someone do not have the score of this course, the score is -1.
        */

    }

    public func get_top_student(): Option<String> {
        /*
        Calculate every student's gpa with get_gpa method, and find the student with highest gpa
        :return: String, name of student whose gpa is highest
        >>> system.add_student('student 1', 3, 'SE')
        >>> system.add_student('student 2', 2, 'SE')
        >>> system.add_course_score('student 1', 'Computer Network', 92)
        >>> system.add_course_score('student 2', 'Computer Network', 97)
        >>> system.get_top_student()
        'student 2'
        */

    }
}