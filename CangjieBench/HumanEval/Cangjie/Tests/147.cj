
main() {
    if (get_max_triples(5) != 1) {
        throw Exception("Test Failed!")
    }
    if (get_max_triples(6) != 4) {
        throw Exception("Test Failed!")
    }
    if (get_max_triples(10) != 36) {
        throw Exception("Test Failed!")
    }
    if (get_max_triples(100) != 53361) {
        throw Exception("Test Failed!")
    }
}