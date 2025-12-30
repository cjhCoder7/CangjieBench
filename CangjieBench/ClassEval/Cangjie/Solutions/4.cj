import std.collection.HashMap
import std.collection.ArrayList

class Student <: Equatable<Student>{
    let name: String
    let grade: Int64
    let major: String
    let cources: HashMap<String, Int64>

    public init(name: String, grade: Int64, major: String) {
        this.name = name
        this.grade = grade
        this.major = major
        this.cources = HashMap<String, Int64>()
    }

    public override operator func != (that: Student): Bool {
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

    let students: HashMap<String, Student>

    public init() {
        this.students = HashMap<String, Student>()
    }

    public func add_student(name: String, grade: Int64, major: String): Unit {
        this.students.add(name, Student(name, grade, major))
    }

    public func add_course_score(name: String, course: String, score: Int64): Unit {
        if (this.students.contains(name)) {
            this.students[name].cources.add(course, score)
        }
    }

    public func get_gpa(name: String): Option<Float64> {
        if (this.students.contains(name)) {
            var sum = 0
            for (i in this.students[name].cources.values()) {
                sum += i
            }
            return if (sum == 0) {
                None
            } else {
                Float64(sum) / Float64(this.students[name].cources.size)
            }
        } else {
            return None
        }
    }

    public func get_all_students_with_fail_course(): ArrayList<String> {
        let res_students = ArrayList<String>()
        for ((name, student) in this.students) {
            for ((course, score) in student.cources) {
                if (score < 60) {
                    res_students.add(name)
                    break
                }
            }
        }
        return res_students
    }

    public func get_course_average(course: String): Option<Float64> {
        var total = 0
        var count = 0
        for (student in this.students.values()) {
            if (student.cources.contains(course) && student.cources[course] != -1) {
                total += student.cources[course]
                count++
            }
        }
        return if (count == 0) {
            None
        } else {
            Float64(total) / Float64(count)
        }
    }

    public func get_top_student(): Option<String> {
        var top_student: Option<String> = None
        var top_gpa = 0.0
        for ((name, student) in this.students) {
            let gpa = this.get_gpa(name)
            if (gpa != None && (gpa ?? 0.0) > top_gpa) {
                top_gpa = gpa ?? 0.0
                top_student = name
            }
        }
        return top_student
    }
}
