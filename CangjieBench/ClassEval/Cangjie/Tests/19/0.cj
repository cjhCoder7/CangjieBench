func test_generate_primes_1() {
    let cs = ChandrasekharSieve(20)
    let res = cs.generate_primes()
    let expected = ArrayList<Int64>([2, 3, 5, 7, 11, 13, 17, 19])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_generate_primes_2() {
    let cs = ChandrasekharSieve(18)
    let res = cs.generate_primes()
    let expected = ArrayList<Int64>([2, 3, 5, 7, 11, 13, 17])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_generate_primes_3() {
    let cs = ChandrasekharSieve(15)
    let res = cs.generate_primes()
    let expected = ArrayList<Int64>([2, 3, 5, 7, 11, 13])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_generate_primes_4() {
    let cs = ChandrasekharSieve(10)
    let res = cs.generate_primes()
    let expected = ArrayList<Int64>([2, 3, 5, 7])
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

func test_generate_primes_5() {
    let cs = ChandrasekharSieve(1)
    let res = cs.generate_primes()
    let expected = ArrayList<Int64>()
    if (res != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_generate_primes_1()
    test_generate_primes_2()
    test_generate_primes_3()
    test_generate_primes_4()
    test_generate_primes_5()
}