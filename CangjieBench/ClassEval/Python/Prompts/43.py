class HRManagementSystem:
    """
    This is a class as personnel management system that implements functions such as adding, deleting, querying, and updating employees
    """

    def __init__(self):
        """
        Initialize the HRManagementSystem withan attribute employees, which is an empty dictionary.
        """
        self.employees = {}

    def add_employee(self, employee_id, name, position, department, salary):
        """
        Add a new employee to the HRManagementSystem.
        :param employee_id: The employee's id, int.
        :param name: The employee's name, str.
        :param position: The employee's position, str.
        :param department: The employee's department, str.
        :param salary: The employee's salary, int.
        :return: If the employee is already in the HRManagementSystem, returns False, otherwise, returns True.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.add_employee(1, 'John', 'Manager', 'Sales', 100000)
        True
        >>> hrManagementSystem.add_employee(1, 'John', 'Manager', 'Sales', 100000)
        False

        """

    def remove_employee(self, employee_id):
        """
        Remove an employee from the HRManagementSystem.
        :param employee_id: The employee's id, int.
        :return: If the employee is already in the HRManagementSystem, returns True, otherwise, returns False.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.employees = {1: {'name': 'John', 'position': 'Manager', 'department': 'Sales', 'salary': 100000}}
        >>> hrManagementSystem.remove_employee(1)
        True
        >>> hrManagementSystem.remove_employee(2)
        False

        """

    def update_employee(self, employee_id: int, employee_info: dict):
        """
        Update an employee's information in the HRManagementSystem.
        :param employee_id: The employee's id, int.
        :param employee_info: The employee's information, dict.
        :return: If the employee is already in the HRManagementSystem, returns True, otherwise, returns False.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.employees = {1: {'name': 'John', 'position': 'Manager', 'department': 'Sales', 'salary': 100000}}
        >>> hrManagementSystem.update_employee(1, {'name': 'John', 'position': 'Manager', 'department': 'Sales', 'salary': 20000})
        True
        >>> hrManagementSystem.update_employee(2, {'name': 'John', 'position': 'Manager', 'department': 'Sales', 'salary': 20000})
        False

        """

    def get_employee(self, employee_id):
        """
        Get an employee's information from the HRManagementSystem.
        :param employee_id: The employee's id, int.
        :return: If the employee is already in the HRManagementSystem, returns the employee's information, otherwise, returns False.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.employees = {1: {'name': 'John', 'position': 'Manager', 'department': 'Sales', 'salary': 100000}}
        >>> hrManagementSystem.get_employee(1)
        {'name': 'John', 'position': 'Manager', 'department': 'Sales', 'salary': 100000}
        >>> hrManagementSystem.get_employee(2)
        False

        """

    def list_employees(self):
        """
        List all employees' information in the HRManagementSystem.
        :return: A list of all employees' information,dict.
        >>> hrManagementSystem = HRManagementSystem()
        >>> hrManagementSystem.employees = {1: {'name': 'John', 'position': 'Manager', 'department': 'Sales', 'salary': 100000}}
        >>> hrManagementSystem.list_employees()
        {1: {'employee_ID': 1, 'name': 'John', 'position': 'Manager', 'department': 'Sales', 'salary': 100000}}

        """