
main() {
    if (histogram("a b b a") != HashMap<String, Int64>([("a", 2), ("b", 2)])) {
        throw Exception("Test Failed!")
    }
    if (histogram("a b c a b") != HashMap<String, Int64>([("a", 2), ("b", 2)])) {
        throw Exception("Test Failed!")
    }
    if (histogram("a b c d g") != HashMap<String, Int64>([("a", 1), ("b", 1), ("c", 1), ("d", 1), ("g", 1)])) {
        throw Exception("Test Failed!")
    }
    if (histogram("r t g") != HashMap<String, Int64>([("r", 1), ("t", 1), ("g", 1)])) {
        throw Exception("Test Failed!")
    }
    if (histogram("b b b b a") != HashMap<String, Int64>([("b", 4)])) {
        throw Exception("Test Failed!")
    }
    if (histogram("r t g") != HashMap<String, Int64>([("r", 1), ("t", 1), ("g", 1)])) {
        throw Exception("Test Failed!")
    }
    if (histogram("") != HashMap<String, Int64>([])) {
        throw Exception("Test Failed!")
    }
    if (histogram("a") != HashMap<String, Int64>([("a", 1)])) {
        throw Exception("Test Failed!")
    }
}
