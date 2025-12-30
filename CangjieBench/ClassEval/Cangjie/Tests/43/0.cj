func test_add_employee() {
    let hr_system = HRManagementSystem()
    if (hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees[1] != Employee("John Doe", "Manager", "HR", 5000)) {
        throw Exception("Test failed!")
    }
}

func test_add_employee_2() {
    let hr_system = HRManagementSystem()
    if (hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000) != false) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees[1] != Employee("John Doe", "Manager", "HR", 5000)) {
        throw Exception("Test failed!")
    }
}

func test_add_employee_3() {
    let hr_system = HRManagementSystem()
    if (hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.add_employee(2, "John Doe", "Manager", "HR", 5000) != true) {
        throw Exception("Test failed!")
    }
    var expected = HashMap<Int64, Employee>()
    expected[1] = Employee("John Doe", "Manager", "HR", 5000)
    expected[2] = Employee("John Doe", "Manager", "HR", 5000)
    if (hr_system.employees != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_employee_4() {
    let hr_system = HRManagementSystem()
    if (hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.add_employee(2, "John Doe", "Manager", "HR", 5000) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000) != false) {
        throw Exception("Test failed!")
    }
    var expected = HashMap<Int64, Employee>()
    expected[1] = Employee("John Doe", "Manager", "HR", 5000)
    expected[2] = Employee("John Doe", "Manager", "HR", 5000)
    if (hr_system.employees != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_employee_5() {
    let hr_system = HRManagementSystem()
    if (hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.add_employee(2, "John Doe", "Manager", "HR", 5000) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000) != false) {
        throw Exception("Test failed!")
    }
    if (hr_system.add_employee(2, "John Doe", "Manager", "HR", 5000) != false) {
        throw Exception("Test failed!")
    }
    var expected = HashMap<Int64, Employee>()
    expected[1] = Employee("John Doe", "Manager", "HR", 5000)
    expected[2] = Employee("John Doe", "Manager", "HR", 5000)
    if (hr_system.employees != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_employee()
    test_add_employee_2()
    test_add_employee_3()
    test_add_employee_4()
    test_add_employee_5()
}