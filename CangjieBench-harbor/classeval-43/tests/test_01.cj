import std.collection.HashMap
import std.collection.ArrayList

func test_remove_employee() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee('John', 'Manager', 'Sales', 100000))
    if (hr_system.remove_employee(1) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees != HashMap<Int64, Employee>()) {
        throw Exception("Test failed!")
    }
}

func test_remove_employee_2() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee('John', 'Manager', 'Sales', 100000))
    if (hr_system.remove_employee(1) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.remove_employee(1) != false) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees != HashMap<Int64, Employee>()) {
        throw Exception("Test failed!")
    }
}

func test_remove_employee_3() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee('John', 'Manager', 'Sales', 100000))
    hr_system.employees.add(2, Employee('John', 'Manager', 'Sales', 100000))
    if (hr_system.remove_employee(1) != true) {
        throw Exception("Test failed!")
    }
    let expected = HashMap<Int64, Employee>()
    expected.add(2, Employee('John', 'Manager', 'Sales', 100000))
    if (hr_system.employees != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_employee_4() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee('John', 'Manager', 'Sales', 100000))
    hr_system.employees.add(2, Employee('John', 'Manager', 'Sales', 100000))
    if (hr_system.remove_employee(1) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.remove_employee(2) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees != HashMap<Int64, Employee>()) {
        throw Exception("Test failed!")
    }
}

func test_remove_employee_5() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee('John', 'Manager', 'Sales', 100000))
    hr_system.employees.add(2, Employee('John', 'Manager', 'Sales', 100000))
    if (hr_system.remove_employee(1) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.remove_employee(2) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.remove_employee(1) != false) {
        throw Exception("Test failed!")
    }
    if (hr_system.remove_employee(2) != false) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees != HashMap<Int64, Employee>()) {
        throw Exception("Test failed!")
    }
}

main() {
    test_remove_employee()
    test_remove_employee_2()
    test_remove_employee_3()
    test_remove_employee_4()
    test_remove_employee_5()
}
