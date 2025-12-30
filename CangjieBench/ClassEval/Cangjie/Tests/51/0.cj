func test_kappa_1() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([2, 1, 1]))
    matrix.add(ArrayList<Int64>([1, 2, 1]))
    matrix.add(ArrayList<Int64>([1, 1, 2]))
    if (abs(KappaCalculator.kappa(matrix, 3) - 0.25) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_kappa_2() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([2, 2, 1]))
    matrix.add(ArrayList<Int64>([1, 2, 1]))
    matrix.add(ArrayList<Int64>([1, 1, 2]))
    if (abs(KappaCalculator.kappa(matrix, 3) - 0.19469026548672572) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_kappa_3() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([2, 1, 2]))
    matrix.add(ArrayList<Int64>([1, 2, 1]))
    matrix.add(ArrayList<Int64>([1, 1, 2]))
    if (abs(KappaCalculator.kappa(matrix, 3) - 0.19469026548672572) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_kappa_4() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([2, 1, 1]))
    matrix.add(ArrayList<Int64>([2, 2, 1]))
    matrix.add(ArrayList<Int64>([1, 1, 2]))
    if (abs(KappaCalculator.kappa(matrix, 3) - 0.19469026548672572) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_kappa_5() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([2, 1, 1]))
    matrix.add(ArrayList<Int64>([1, 2, 2]))
    matrix.add(ArrayList<Int64>([1, 1, 2]))
    if (abs(KappaCalculator.kappa(matrix, 3) - 0.19469026548672572) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_kappa_1()
    test_kappa_2()
    test_kappa_3()
    test_kappa_4()
    test_kappa_5()
}