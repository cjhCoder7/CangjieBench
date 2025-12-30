import std.ast.*
import std.fs.*
import std.io.*
import std.collection.*
import std.argopt.*

func read_file(file_name: String): String {
    let bytes = File.readFrom(file_name)
    let byte_buffer = ByteBuffer()
    byte_buffer.write(bytes)
    let string_reader = StringReader(byte_buffer)
    var origin_code = string_reader.readToEnd()
    // delete import and package statements
    let lines = origin_code.split("\n")
    let filtered_lines = ArrayList<String>()
    for (line in lines) {
        if (!line.contains("import ") && !line.contains("package ")) {
            filtered_lines.add(line)
        }
    }
    origin_code = String.join(filtered_lines.toArray(), delimiter: "\n")
    return origin_code
}

func get_functions(code_tokens: Tokens): ArrayList<String> {
    let functions = ArrayList<String>()

    var index : Int64 = 0
    var decl : Decl
    do {
        try {
            (decl, index) = parseDeclFragment(code_tokens, startFrom: index)
            if (decl is FuncDecl) {
                functions.add(decl.toTokens().toString())
            }
        } catch (e: ParseASTException){
            println("parse error: " + e.message)
            return functions
        }
    } while (index < code_tokens.size)

    return functions
}

func get_classes(code_tokens: Tokens): ArrayList<String> {
    let classes = ArrayList<String>()

    var index : Int64 = 0
    var decl : Decl

    do {
        try {
            (decl, index) = parseDeclFragment(code_tokens, startFrom: index)
            if (decl is ClassDecl) {
                classes.add(decl.toTokens().toString())
            }
        } catch (e: ParseASTException){
            println("parse error: " + e.message)
            return classes
        }
    } while (index < code_tokens.size)

    return classes
}

main(args: Array<String>) {
    let arg_specs = [
        Long('input', RequiredValue)
    ]
    var args_result = parseArguments(args, arg_specs)
    var input_file_path = ""
    if (args_result.options.contains("input")) {
        input_file_path = args_result.options["input"]
    } else {
        throw Exception("input file path is required")
    }
    
    let output_function_dir = "./functions"
    let output_class_dir = "./classes"
    if (!exists(output_function_dir)) {
        Directory.create(output_function_dir, recursive: true)
    }
    if (!exists(output_class_dir)) {
        Directory.create(output_class_dir, recursive: true)
    }
    let exist = exists(input_file_path)
    if (exist) {
        let origin_code = read_file(input_file_path)
        let code_tokens = cangjieLex(origin_code)
        let functions = get_functions(code_tokens)
        let classes = get_classes(code_tokens)

        for (i in 0..functions.size) {
            let file_name = output_function_dir + "/" + "function_" + i.toString() + ".cj"
            var file: File = File(file_name, Write)
            let bytes: Array<Byte> = functions[i].toArray()
            file.write(bytes)
            file.close()
        }
        for (i in 0..classes.size) {
            let file_name = output_class_dir + "/" + "class_" + i.toString() + ".cj"
            var file: File = File(file_name, Write)
            let bytes: Array<Byte> = classes[i].toArray()
            file.write(bytes)
            file.close()
        }
    } else {
        throw Exception("input file not exist")
    }
}
