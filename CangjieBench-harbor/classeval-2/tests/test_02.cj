import std.collection.*
import std.reflect.*
import std.convert.*

func test_add_argument() {
    let parser = ArgumentParser()

    parser.add_argument("name")
    parser.add_argument("age", required: true, arg_type: TypeInfo.of<Int64>())
    
    if (parser.required != HashSet<String>(["age"])) {
        throw Exception("Test failed!")
    }
    if (parser.types != HashMap<String, TypeInfo>([("name", TypeInfo.of<String>()), ("age", TypeInfo.of<Int64>())])) {
        throw Exception("Test failed!")
    }
}

func test_add_argument_2() {
    let parser = ArgumentParser()

    parser.add_argument("name")
    parser.add_argument("age", required: false, arg_type: TypeInfo.of<Int64>())
    parser.add_argument("verbose", arg_type: TypeInfo.of<Bool>())
    
    if (parser.required != HashSet<String>([])) {
        throw Exception("Test failed!")
    }
    if (parser.types != HashMap<String, TypeInfo>([("name", TypeInfo.of<String>()), ("age", TypeInfo.of<Int64>()), ("verbose", TypeInfo.of<Bool>())])) {
        throw Exception("Test failed!")
    }
}

func test_add_argument_3() {
    let parser = ArgumentParser()

    parser.add_argument("name")
    parser.add_argument("age", required: false, arg_type: TypeInfo.of<Int64>())
    parser.add_argument("verbose", arg_type: TypeInfo.of<Bool>())
    parser.add_argument("d")
    
    if (parser.required != HashSet<String>([])) {
        throw Exception("Test failed!")
    }
    if (parser.types != HashMap<String, TypeInfo>([("name", TypeInfo.of<String>()), ("age", TypeInfo.of<Int64>()), ("verbose", TypeInfo.of<Bool>()), ("d", TypeInfo.of<String>())])) {
        throw Exception("Test failed!")
    }
}

func test_add_argument_4() {
    let parser = ArgumentParser()

    parser.add_argument("name")
    parser.add_argument("age", required: false, arg_type: TypeInfo.of<Int64>())
    parser.add_argument("verbose", arg_type: TypeInfo.of<Bool>())
    parser.add_argument("d")
    parser.add_argument("option")
    
    if (parser.required != HashSet<String>([])) {
        throw Exception("Test failed!")
    }
    if (parser.types != HashMap<String, TypeInfo>([("name", TypeInfo.of<String>()), ("age", TypeInfo.of<Int64>()), ("verbose", TypeInfo.of<Bool>()), ("d", TypeInfo.of<String>()), ("option", TypeInfo.of<String>())])) {
        throw Exception("Test failed!")
    }
}

func test_add_argument_5() {
    let parser = ArgumentParser()

    parser.add_argument("name")
    parser.add_argument("age", required: false, arg_type: TypeInfo.of<Int64>())
    parser.add_argument("verbose", arg_type: TypeInfo.of<Bool>())
    parser.add_argument("d")
    parser.add_argument("option")
    parser.add_argument("option2", arg_type: TypeInfo.of<Bool>())
    
    if (parser.required != HashSet<String>([])) {
        throw Exception("Test failed!")
    }
    if (parser.types != HashMap<String, TypeInfo>([("name", TypeInfo.of<String>()), ("age", TypeInfo.of<Int64>()), ("verbose", TypeInfo.of<Bool>()), ("d", TypeInfo.of<String>()), ("option", TypeInfo.of<String>()), ("option2", TypeInfo.of<Bool>())])) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_argument()
    test_add_argument_2()
    test_add_argument_3()
    test_add_argument_4()
    test_add_argument_5()
}
