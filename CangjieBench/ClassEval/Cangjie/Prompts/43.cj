import std.collection.HashMap
import std.collection.ArrayList

class Employee <: Equatable<Employee> {

    /*
    This is a class representing an employee with attributes such as name, position, department, and salary.
    */

    var name: String
    var position: String
    var department: String
    var salary: Int64

    public init(name: String, position: String, department: String, salary: Int64) {
        /*
        Initialize an Employee with name, position, department, and salary.
        :param name: The employee's name, String.
        :param position: The employee's position, String.
        :param department: The employee's department, String.
        :param salary: The employee's salary, Int64.
        */
        this.name = name
        this.position = position
        this.department = department
        this.salary = salary
    }

    public override operator func != (that: Employee): Bool {
        /*
        Check if two Employee objects are not equal.
        :param that: Another Employee object to compare with.
        :return: true if any attribute is different, false otherwise.
        */
        return this.name != that.name || this.position != that.position || this.department != that.department || this.salary != that.salary
    }

    public override operator func == (that: Employee): Bool {
        /*
        Check if two Employee objects are equal.
        :param that: Another Employee object to compare with.
        :return: true if all attributes are the same, false otherwise.
        */
        return this.name == that.name && this.position == that.position && this.department == that.department && this.salary == that.salary
    }
}

class HRManagementSystem {

    /*
    This is a class as personnel management system that implements functions such as adding, deleting, querying, and updating employees
    */

    var employees: HashMap<Int64, Employee>

    public init() {
        /*
        Initialize the HRManagementSystem withan attribute employees, which is an empty dictionary.
        */
        this.employees = HashMap<Int64, Employee>()
    }

    public func add_employee(employee_id: Int64, name: String, position: String, department: String, salary: Int64): Bool {
        /*
        Add a new employee to the HRManagementSystem.
        :param employee_id: The employee's id, Int64.
        :param name: The employee's name, String.
        :param position: The employee's position, String.
        :param department: The employee's department, String.
        :param salary: The employee's salary, Int64.
        :return: If the employee is already in the HRManagementSystem, returns false, otherwise, returns true.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.add_employee(1, 'John', 'Manager', 'Sales', 100000)
        true
        >>> hrManagementSystem.add_employee(1, 'John', 'Manager', 'Sales', 100000)
        false

        */
        
    }

    public func remove_employee(employee_id: Int64): Bool {
        /*
        Remove an employee from the HRManagementSystem.
        :param employee_id: The employee's id, Int64.
        :return: If the employee is already in the HRManagementSystem, returns true, otherwise, returns false.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.employees.add(1, Employee('John', 'Manager', 'Sales', 100000))
        >>> hrManagementSystem.remove_employee(1)
        true
        >>> hrManagementSystem.remove_employee(2)
        false

        */
        
    }

    public func update_employee(employee_id: Int64, employee_info: HashMap<String, Any>): Bool {
        /*
        Update an employee's information in the HRManagementSystem.
        :param employee_id: The employee's id, Int64.
        :param employee_info: The employee's information, HashMap<String, Any>.
        :return: If the employee is already in the HRManagementSystem, returns true, otherwise, returns false.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.employees.add(1, Employee('John', 'Manager', 'Sales', 100000))
        >>> hrManagementSystem.update_employee(1, HashMap<String, Any>([('name', 'John Doe'), ('position', 'Manager'), ('department', 'Sales'), ('salary', 20000)]))
        true
        >>> hrManagementSystem.update_employee(2, HashMap<String, Any>([('name', 'John Doe'), ('position', 'Manager'), ('department', 'Sales'), ('salary', 20000)]))
        false

        */
        
    }

    public func get_employee(employee_id: Int64): Option<Employee> {
        /*
        Get an employee's information from the HRManagementSystem.
        :param employee_id: The employee's id, Int64.
        :return: If the employee is already in the HRManagementSystem, returns the employee's information, otherwise, returns None.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.employees.add(1, Employee('John', 'Manager', 'Sales', 100000))
        >>> hrManagementSystem.get_employee(1)
        Employee('John', 'Manager', 'Sales', 100000)
        >>> hrManagementSystem.get_employee(2)
        None

        */
        
    }

    public func list_employees(): ArrayList<Employee> {
        /*
        List all employees' information in the HRManagementSystem.
        :return: A list of all employees' information, ArrayList<Employee>.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.employees = HashMap<Int64, Employee>([(1, Employee('John', 'Manager', 'Sales', 100000))])
        >>> hrManagementSystem.list_employees()
        ArrayList<Employee>([Employee('John', 'Manager', 'Sales', 100000)])

        */
        
    }
}
