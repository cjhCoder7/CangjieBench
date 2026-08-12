#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.HashMap
import std.collection.ArrayList

class Employee <: Equatable<Employee> {

    var name: String
    var position: String
    var department: String
    var salary: Int64

    public init(name: String, position: String, department: String, salary: Int64) {
        this.name = name
        this.position = position
        this.department = department
        this.salary = salary
    }

    public override operator func != (that: Employee): Bool {
        return this.name != that.name || this.position != that.position || this.department != that.department || this.salary != that.salary
    }

    public override operator func == (that: Employee): Bool {
        return this.name == that.name && this.position == that.position && this.department == that.department && this.salary == that.salary
    }
}

class HRManagementSystem {

    var employees: HashMap<Int64, Employee>

    public init() {
        this.employees = HashMap<Int64, Employee>()
    }

    public func add_employee(employee_id: Int64, name: String, position: String, department: String, salary: Int64): Bool {
        if (this.employees.contains(employee_id)) {
            return false
        } else {
            this.employees.add(employee_id, Employee(name, position, department, salary))
            return true
        }
    }

    public func remove_employee(employee_id: Int64): Bool {
        if (this.employees.contains(employee_id)) {
            this.employees.remove(employee_id)
            return true
        } else {
            return false
        }
    }

    public func update_employee(employee_id: Int64, employee_info: HashMap<String, Any>): Bool {
        if (!this.employees.contains(employee_id)) {
            return false
        } else {
            let employee = this.employees[employee_id]
            for ((k, v) in employee_info) {
                if (!["name", "position", "department", "salary"].contains(k)) {
                    return false
                }
            }
            if (employee_info.contains("name")) {
                employee.name = (employee_info["name"] as String) ?? ""
            }
            if (employee_info.contains("position")) {
                employee.position = (employee_info["position"] as String) ?? ""
            }
            if (employee_info.contains("department")) {
                employee.department = (employee_info["department"] as String) ?? ""
            }
            if (employee_info.contains("salary")) {
                employee.salary = (employee_info["salary"] as Int64) ?? 0
            }
            return true
        }
    }

    public func get_employee(employee_id: Int64): Option<Employee> {
        if (this.employees.contains(employee_id)) {
            return this.employees[employee_id]
        } else {
            return None
        }
    }

    public func list_employees(): ArrayList<Employee> {
        return ArrayList<Employee>(this.employees.values())
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
