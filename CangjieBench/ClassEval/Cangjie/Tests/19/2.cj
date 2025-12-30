func test_chandrasekharsieve() {
    let cs = ChandrasekharSieve(20)
    let res = cs.generate_primes()
    let expected = ArrayList<Int64>([2, 3, 5, 7, 11, 13, 17, 19])
    if (res != expected) {
        throw Exception("Test failed!")
    }
    let res2 = cs.get_primes()
    let expected2 = ArrayList<Int64>([2, 3, 5, 7, 11, 13, 17, 19])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_chandrasekharsieve()
}