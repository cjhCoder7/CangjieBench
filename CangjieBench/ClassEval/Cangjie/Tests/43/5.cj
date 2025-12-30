func test_main() {
    let hr_system = HRManagementSystem()
    hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000)
    hr_system.add_employee(2, "Jane Smith", "Developer", "IT", 4000)
    var expected1 = ArrayList<Employee>()
    expected1.add(Employee("John Doe", "Manager", "HR", 5000))
    expected1.add(Employee("Jane Smith", "Developer", "IT", 4000))
    if (hr_system.list_employees() != expected1) {
        throw Exception("Test failed!")
    }
    hr_system.remove_employee(2)
    var expected2 = ArrayList<Employee>()
    expected2.add(Employee("John Doe", "Manager", "HR", 5000))
    if (hr_system.list_employees() != expected2) {
        throw Exception("Test failed!")
    }
    if (hr_system.remove_employee(2) != false) {
        throw Exception("Test failed!")
    }
    var update_data1 = HashMap<String, Any>()
    update_data1["name"] = "John Doe Jr."
    update_data1["salary"] = 5500
    if (hr_system.update_employee(1, update_data1) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees[1] != Employee("John Doe Jr.", "Manager", "HR", 5500)) {
        throw Exception("Test failed!")
    }
    var update_data2 = HashMap<String, Any>()
    update_data2["name"] = "Invalid Employee"
    if (hr_system.update_employee(3, update_data2) != false) {
        throw Exception("Test failed!")
    }
    if (hr_system.get_employee(1) != Employee("John Doe Jr.", "Manager", "HR", 5500)) {
        throw Exception("Test failed!")
    }
    if (hr_system.get_employee(2) != None) {
        throw Exception("Test failed!")
    }
    var expected3 = ArrayList<Employee>()
    expected3.add(Employee("John Doe Jr.", "Manager", "HR", 5500))
    if (hr_system.list_employees() != expected3) {
        throw Exception("Test failed!")
    }
}

func test_main_2() {
    let hr_system = HRManagementSystem()
    if (hr_system.remove_employee(2) != false) {
        throw Exception("Test failed!")
    }
    var update_data1 = HashMap<String, Any>()
    update_data1["name"] = "John Doe Jr."
    update_data1["salary"] = 5500
    if (hr_system.update_employee(1, update_data1) != false) {
        throw Exception("Test failed!")
    }
    hr_system.add_employee(1, "John Doe", "Manager", "HR", 5000)
    hr_system.add_employee(2, "Jane Smith", "Developer", "IT", 4000)
    var expected1 = ArrayList<Employee>()
    expected1.add(Employee("John Doe", "Manager", "HR", 5000))
    expected1.add(Employee("Jane Smith", "Developer", "IT", 4000))
    if (hr_system.list_employees() != expected1) {
        throw Exception("Test failed!")
    }
    if (hr_system.remove_employee(2) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees[1] != Employee("John Doe", "Manager", "HR", 5000)) {
        throw Exception("Test failed!")
    }
    var expected2 = ArrayList<Employee>()
    expected2.add(Employee("John Doe", "Manager", "HR", 5000))
    if (hr_system.list_employees() != expected2) {
        throw Exception("Test failed!")
    }
    var update_data2 = HashMap<String, Any>()
    update_data2["name"] = "John Doe Jr."
    update_data2["salary"] = 5500
    if (hr_system.update_employee(1, update_data2) != true) {
        throw Exception("Test failed!")
    }
    if (hr_system.employees[1] != Employee("John Doe Jr.", "Manager", "HR", 5500)) {
        throw Exception("Test failed!")
    }
    if (hr_system.get_employee(1) != Employee("John Doe Jr.", "Manager", "HR", 5500)) {
        throw Exception("Test failed!")
    }
    if (hr_system.get_employee(2) != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
    test_main_2()
}