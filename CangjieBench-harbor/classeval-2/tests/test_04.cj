import std.collection.*
import std.reflect.*
import std.convert.*

func test_main() {
    let parser = ArgumentParser()

    let command = "script --arg1=21 --option1 -arg2 value -option2"

    parser.add_argument("arg1", required: true, arg_type: TypeInfo.of<Int64>())
    parser.add_argument("arg2")

    if (parser.required != HashSet<String>(["arg1"])) {
        throw Exception("Test failed!")
    }
    if (parser.types != HashMap<String, TypeInfo>([("arg1", TypeInfo.of<Int64>()), ("arg2", TypeInfo.of<String>())])) {
        throw Exception("Test failed!")
    }
    if (parser.arguments.size != 0) {
        throw Exception("Test failed!")
    }

    parser.parse_arguments(command)
    let arguments = HashMap<String, Any>([("arg1", 21), ("option1", true), ("arg2", "value"), ("option2", true)])
    if (parser.arguments.size != 4) {
        throw Exception("Test failed!")
    }
    if ((parser.arguments["arg1"] as Int64) != 21) {
        throw Exception("Test failed!")
    }
    if ((parser.arguments["option1"] as Bool) != true) {
        throw Exception("Test failed!")
    }
    if ((parser.arguments["arg2"] as String) != "value") {
        throw Exception("Test failed!")
    }
    if ((parser.arguments["option2"] as Bool) != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
