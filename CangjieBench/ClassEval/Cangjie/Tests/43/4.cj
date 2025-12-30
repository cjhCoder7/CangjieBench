func test_list_employees() {
    let hr_system = HRManagementSystem()
    hr_system.employees[1] = Employee('John', 'Manager', 'Sales', 100000)
    let expected = ArrayList<Employee>()
    expected.add(Employee('John', 'Manager', 'Sales', 100000))
    if (hr_system.list_employees() != expected) {
        throw Exception("Test failed!")
    }
}

func test_list_employees_2() {
    let hr_system = HRManagementSystem()
    let expected = ArrayList<Employee>()
    if (hr_system.list_employees() != expected) {
        throw Exception("Test failed!")
    }
}

func test_list_employees_3() {
    let hr_system = HRManagementSystem()
    hr_system.employees[1] = Employee('John', 'Manager', 'Sales', 100000)
    hr_system.employees[2] = Employee('Jane', 'Manager', 'Sales', 100000)
    let expected = ArrayList<Employee>()
    expected.add(Employee('John', 'Manager', 'Sales', 100000))
    expected.add(Employee('Jane', 'Manager', 'Sales', 100000))
    if (hr_system.list_employees() != expected) {
        throw Exception("Test failed!")
    }
}

func test_list_employees_4() {
    let hr_system = HRManagementSystem()
    hr_system.employees[1] = Employee('John', 'Manager', 'Sales', 100000)
    hr_system.employees[2] = Employee('Jane', 'Manager', 'Sales', 100000)
    let expected1 = ArrayList<Employee>()
    expected1.add(Employee('John', 'Manager', 'Sales', 100000))
    expected1.add(Employee('Jane', 'Manager', 'Sales', 100000))
    if (hr_system.list_employees() != expected1) {
        throw Exception("Test failed!")
    }
    hr_system.employees = HashMap<Int64, Employee>()
    hr_system.employees[1] = Employee('John', 'Manager', 'Sales', 100000)
    let expected2 = ArrayList<Employee>()
    expected2.add(Employee('John', 'Manager', 'Sales', 100000))
    if (hr_system.list_employees() != expected2) {
        throw Exception("Test failed!")
    }
}

func test_list_employees_5() {
    let hr_system = HRManagementSystem()
    hr_system.employees[1] = Employee('John', 'Manager', 'Sales', 100000)
    hr_system.employees[2] = Employee('Jane', 'Manager', 'Sales', 100000)
    let expected1 = ArrayList<Employee>()
    expected1.add(Employee('John', 'Manager', 'Sales', 100000))
    expected1.add(Employee('Jane', 'Manager', 'Sales', 100000))
    if (hr_system.list_employees() != expected1) {
        throw Exception("Test failed!")
    }
    hr_system.employees = HashMap<Int64, Employee>()
    let expected2 = ArrayList<Employee>()
    if (hr_system.list_employees() != expected2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_list_employees()
    test_list_employees_2()
    test_list_employees_3()
    test_list_employees_4()
    test_list_employees_5()
}