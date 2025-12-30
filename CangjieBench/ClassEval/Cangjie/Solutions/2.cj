import std.collection.*
import std.reflect.*
import std.convert.*

class ArgumentParser {

    let arguments: HashMap<String, Any>
    let required: HashSet<String>
    let types: HashMap<String, TypeInfo>

    public init() {
        arguments = HashMap<String, Any>()
        required = HashSet<String>()
        types = HashMap<String, TypeInfo>()
    }

    public func parse_arguments(command_string: String): (Bool, Option<HashSet<String>>) {
        let args = command_string.split(" ")[1..]
        for (i in 0..args.size) {
            let arg = args[i]
            if (arg.startsWith("--")) {
                let key_value = arg[2..].split("=")
                if (key_value.size == 2) {
                    this.arguments[key_value[0]] = convert_type(key_value[0], key_value[1])
                } else {
                    this.arguments[key_value[0]] = true
                }
            } else if (arg.startsWith("-")) {
                let key = arg[1..]
                if (i + 1 < args.size && !args[i + 1].startsWith("-")) {
                    this.arguments[key] = convert_type(key, args[i + 1])
                } else {
                    this.arguments[key] = true
                }
            }
        }
        let missing_args = HashSet<String>()
        for (arg in required) {
            if (!arguments.contains(arg)) {
                missing_args.add(arg)
            }
        }
        if (missing_args.size > 0) {
            return (false, missing_args)
        }
        return (true, None)
    }

    public func get_argument(key: String): Any {
        return this.arguments[key]
    }

    public func add_argument(arg: String, required!: Bool = false, arg_type!: TypeInfo = TypeInfo.of<String>()): Unit {
        if (required) {
            this.required.add(arg)
        }
        this.types.add(arg, arg_type)
    }

    public func convert_type(arg: String, value: String): Any {
        try {
            let type_info = types[arg]
            if (type_info == TypeInfo.of<Int64>()) {
                return Int64.parse(value)
            } else if (type_info == TypeInfo.of<Bool>()) {
                return Bool.parse(value)
            } else if (type_info == TypeInfo.of<String>()) {
                return value
            }
        } catch (e: Exception) {
            return value
        }
        return value
    }
}
