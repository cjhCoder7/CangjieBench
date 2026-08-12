import std.collection.*
import std.reflect.*
import std.convert.*

class ArgumentParser {
    /*
    This is a class for parsing command line arguments to a dictionary.
    */

    let arguments: HashMap<String, Any>
    let required: HashSet<String>
    let types: HashMap<String, TypeInfo>

    public init() {
        /*
        Initialize the fields.
        this.arguments is a dict that stores the args in a command line
        this.required is a set that stores the required arguments
        this.types is a dict that stores type of every arguments.
        >>> parser.arguments
        {'key1': 'value1', 'option1': true}
        >>> parser.required
        {'arg1'}
        >>> parser.types
        {'arg1': 'type1'}
        */
        arguments = HashMap<String, Any>()
        required = HashSet<String>()
        types = HashMap<String, TypeInfo>()
    }

    public func parse_arguments(command_string: String): (Bool, Option<HashSet<String>>) {
        /*
        Parses the given command line argument string and invoke convert_type to stores the parsed result in specific type in the arguments dictionary.
        Checks for missing required arguments, if any, and returns false with the missing argument names, otherwise returns false.
        :param command_string: String, command line argument string, formatted like "python script.py --arg1=value1 -arg2 value2 --option1 -option2"
        :return (true, None) if parsing is successful, (false, missing_args) if parsing fails,
            where missing_args is a set of the missing argument names which are String.
        >>> parser.parse_arguments("python script.py --arg1=value1 -arg2 value2 --option1 -option2")
        (true, None)
        >>> parser.arguments
        {'arg1': 'value1', 'arg2': 'value2', 'option1': true, 'option2': true}
        */
        
    }

    public func get_argument(key: String): Any {
        /*
        Retrieves the value of the specified argument from the arguments dictionary and returns it.
        :param key: String, argument name
        :return: The value of the argument, or None if the argument does not exist.
        >>> parser.arguments
        {'arg1': 'value1', 'arg2': 'value2', 'option1': true, 'option2': true}
        >>> parser.get_argument('arg2')
        'value2'
        */
        
    }

    public func add_argument(arg: String, required!: Bool = false, arg_type!: TypeInfo = TypeInfo.of<String>()): Unit {
        /*
        Adds an argument to this.types and this.required.
        Check if it is a required argument and store the argument type.
        If the argument is set as required, it will be added to the required set.
        The argument type and name are stored in the types dictionary as key-value pairs.
        :param arg: String, argument name
        :param required: Bool, whether the argument is required, default is false
        :param arg_type: TypeInfo, Argument type, default is String
        >>> parser.add_argument('arg1', true, TypeInfo.of<Int64>())
        >>> parser.required
        {'arg1'}
        >>> parser.types
        {'arg1': Int64}
        */
        
    }

    public func convert_type(arg: String, value: String): Any {
        /*
        Try to convert the type of input value by searching in this.types.
        :param value: String, the input value in command line
        :return: return corresponding value in this.types if convert successfully, or the input value oherwise
        >>> parser.types
        {'arg1': Int64}
        >>> parser._convert_type('arg1', '21')
        21
        */
        
    }
}
