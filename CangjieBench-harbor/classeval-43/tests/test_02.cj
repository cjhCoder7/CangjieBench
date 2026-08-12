import std.collection.HashMap
import std.collection.ArrayList

func test_update_employee() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee('John', 'Manager', 'Sales', 100000))
    if (hr_system.update_employee(1, HashMap<String, Any>([('name', 'John Doe'), ('position', 'Manager'), ('department', 'Sales'), ('salary', 20000)])) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees[1] != Employee('John Doe', 'Manager', 'Sales', 20000)) {
        throw Exception("Test failed!")
    }
}

func test_update_employee_2() {
    let hr_system = HRManagementSystem()
    if (hr_system.update_employee(1, HashMap<String, Any>([("name", "John"), ("position", "Manager"), ("department", "Sales"), ("salary", 20000)])) != false) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees != HashMap<Int64, Employee>()) {
        throw Exception("Test failed!")
    }
}

func test_update_employee_3() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee("John", "Manager", "Sales", 100000))
    if (hr_system.update_employee(2, HashMap<String, Any>([("name", "John"), ("position", "Manager"), ("department", "Sales"), ("salary", 20000)])) != false) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees[1] != Employee("John", "Manager", "Sales", 100000)) {
        throw Exception("Test failed!")
    }
}

func test_update_employee_4() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee("John", "Manager", "Sales", 100000))
    if (hr_system.update_employee(1, HashMap<String, Any>([("name", "John"), ("position", "Manager"), ("department", "Sales"), ("salary", 20000)])) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.update_employee(1, HashMap<String, Any>([("name", "John"), ("position", "Manager"), ("department", "Sales"), ("salary", 20000)])) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees[1] != Employee("John", "Manager", "Sales", 20000)) {
        throw Exception("Test failed!")
    }
}

func test_update_employee_5() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee("John", "Manager", "Sales", 100000))
    if (hr_system.update_employee(1, HashMap<String, Any>([("name", "John"), ("position", "Manager"), ("department", "Sales"), ("salary", 20000)])) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.update_employee(1, HashMap<String, Any>([("name", "John"), ("position", "Manager"), ("department", "Sales"), ("salary", 20000)])) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.update_employee(1, HashMap<String, Any>([("name", "John"), ("position", "Manager"), ("department", "Sales"), ("salary", 100000)])) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees[1] != Employee("John", "Manager", "Sales", 100000)) {
        throw Exception("Test failed!")
    }
}

func test_update_employee_6() {
    let hr_system = HRManagementSystem()
    hr_system.employees.add(1, Employee("John", "Manager", "Sales", 100000))
    if (hr_system.update_employee(1, HashMap<String, Any>([("Name", "John"), ("position", "Manager"), ("department", "Sales"), ("salary", 20000)])) != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_update_employee()
    test_update_employee_2()
    test_update_employee_3()
    test_update_employee_4()
    test_update_employee_5()
    test_update_employee_6()
}
