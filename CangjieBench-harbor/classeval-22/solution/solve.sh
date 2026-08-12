#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList
import std.collection.HashMap

class ClassRegistrationSystem {

    var students: ArrayList<HashMap<String, String>>
    var students_registration_classes: HashMap<String, ArrayList<String>>

    public init() {
        this.students = ArrayList<HashMap<String, String>>()
        this.students_registration_classes = HashMap<String, ArrayList<String>>()
    }

    public func register_student(student: HashMap<String, String>): Int64 {
        if (students.contains(student)) {
            return 0
        } else {
            students.add(student)
            return 1
        }
    }

    public func register_class(student_name: String, class_name: String): ArrayList<String> {
        if (students_registration_classes.contains(student_name)) {
            students_registration_classes[student_name].add(class_name)
        } else {
            students_registration_classes[student_name] = ArrayList<String>([class_name])
        }
        return students_registration_classes[student_name]
    }

    public func get_students_by_major(major: String): ArrayList<String> {
        let student_list = ArrayList<String>()
        for (student in students) {
            if (student["major"] == major) {
                student_list.add(student["name"])
            }
        }
        return student_list
    }

    public func get_all_major(): ArrayList<String> {
        let major_list = ArrayList<String>()
        for (student in students) {
            if (!major_list.contains(student["major"])) {
                major_list.add(student["major"])
            }
        }
        return major_list
    }

    public func get_most_popular_class_in_major(major: String): String {
        let class_counter = HashMap<String, Int64>()
        for (student in students) {
            if (student["major"] == major) {
                let classes = students_registration_classes[student["name"]]
                for (class_name in classes) {
                    if (class_counter.contains(class_name)) {
                        class_counter[class_name] += 1
                    } else {
                        class_counter[class_name] = 1
                    }
                }
            }
        }
        var max_count = -1
        var most_popular_class = ""
        for ((class_name, count) in class_counter) {
            if (count > max_count) {
                max_count = count
                most_popular_class = class_name
            }
        }
        return most_popular_class
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
