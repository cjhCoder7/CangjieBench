import std.collection.HashMap
import std.collection.ArrayList

func test_get_employee() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee("John", "Manager", "Sales", 100000))
    if (hr_system.get_employee(1) != Employee("John", "Manager", "Sales", 100000)) {
        throw Exception("Test failed!")
    }
}

func test_get_employee_2() {
    let hr_system = HRManagementSystem()
    if (hr_system.get_employee(1) != None) {
        throw Exception("Test failed!")
    }
}

func test_get_employee_3() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee("John", "Manager", "Sales", 100000))
    if (hr_system.get_employee(2) != None) {
        throw Exception("Test failed!")
    }
}

func test_get_employee_4() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee("John", "Manager", "Sales", 100000))
    if (hr_system.get_employee(1) != Employee("John", "Manager", "Sales", 100000)) {
        throw Exception("Test failed!")
    }
    if (hr_system.get_employee(1) != Employee("John", "Manager", "Sales", 100000)) {
        throw Exception("Test failed!")
    }
}

func test_get_employee_5() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee("John", "Manager", "Sales", 100000))
    hr_system.employees.add(2, Employee("Jane", "Manager", "Sales", 100000))
    if (hr_system.get_employee(1) != Employee("John", "Manager", "Sales", 100000)) {
        throw Exception("Test failed!")
    }
    if (hr_system.get_employee(2) != Employee("Jane", "Manager", "Sales", 100000)) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_employee()
    test_get_employee_2()
    test_get_employee_3()
    test_get_employee_4()
    test_get_employee_5()
}
