func test_fleiss_kappa_1() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([0, 0, 0, 0, 14]))
    matrix.add(ArrayList<Int64>([0, 2, 6, 4, 2]))
    matrix.add(ArrayList<Int64>([0, 0, 3, 5, 6]))
    matrix.add(ArrayList<Int64>([0, 3, 9, 2, 0]))
    matrix.add(ArrayList<Int64>([2, 2, 8, 1, 1]))
    matrix.add(ArrayList<Int64>([7, 7, 0, 0, 0]))
    matrix.add(ArrayList<Int64>([3, 2, 6, 3, 0]))
    matrix.add(ArrayList<Int64>([2, 5, 3, 2, 2]))
    matrix.add(ArrayList<Int64>([6, 5, 2, 1, 0]))
    matrix.add(ArrayList<Int64>([0, 2, 2, 3, 7]))
    if (abs(KappaCalculator.fleiss_kappa(matrix, 10, 5, 14) - 0.20993070442195522) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_fleiss_kappa_2() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([1, 0, 0, 0, 14]))
    matrix.add(ArrayList<Int64>([0, 2, 6, 4, 2]))
    matrix.add(ArrayList<Int64>([0, 0, 3, 5, 6]))
    matrix.add(ArrayList<Int64>([0, 3, 9, 2, 0]))
    matrix.add(ArrayList<Int64>([2, 2, 8, 1, 1]))
    matrix.add(ArrayList<Int64>([7, 7, 0, 0, 0]))
    matrix.add(ArrayList<Int64>([3, 2, 6, 3, 0]))
    matrix.add(ArrayList<Int64>([2, 5, 3, 2, 2]))
    matrix.add(ArrayList<Int64>([6, 5, 2, 1, 0]))
    matrix.add(ArrayList<Int64>([0, 2, 2, 3, 7]))
    if (abs(KappaCalculator.fleiss_kappa(matrix, 10, 5, 14) - 0.2115748928799344) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_fleiss_kappa_3() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([0, 1, 0, 0, 14]))
    matrix.add(ArrayList<Int64>([0, 2, 6, 4, 2]))
    matrix.add(ArrayList<Int64>([0, 0, 3, 5, 6]))
    matrix.add(ArrayList<Int64>([0, 3, 9, 2, 0]))
    matrix.add(ArrayList<Int64>([2, 2, 8, 1, 1]))
    matrix.add(ArrayList<Int64>([7, 7, 0, 0, 0]))
    matrix.add(ArrayList<Int64>([3, 2, 6, 3, 0]))
    matrix.add(ArrayList<Int64>([2, 5, 3, 2, 2]))
    matrix.add(ArrayList<Int64>([6, 5, 2, 1, 0]))
    matrix.add(ArrayList<Int64>([0, 2, 2, 3, 7]))
    if (abs(KappaCalculator.fleiss_kappa(matrix, 10, 5, 14) - 0.21076904123090398) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_fleiss_kappa_4() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([0, 0, 1, 0, 14]))
    matrix.add(ArrayList<Int64>([0, 2, 6, 4, 2]))
    matrix.add(ArrayList<Int64>([0, 0, 3, 5, 6]))
    matrix.add(ArrayList<Int64>([0, 3, 9, 2, 0]))
    matrix.add(ArrayList<Int64>([2, 2, 8, 1, 1]))
    matrix.add(ArrayList<Int64>([7, 7, 0, 0, 0]))
    matrix.add(ArrayList<Int64>([3, 2, 6, 3, 0]))
    matrix.add(ArrayList<Int64>([2, 5, 3, 2, 2]))
    matrix.add(ArrayList<Int64>([6, 5, 2, 1, 0]))
    matrix.add(ArrayList<Int64>([0, 2, 2, 3, 7]))
    if (abs(KappaCalculator.fleiss_kappa(matrix, 10, 5, 14) - 0.2096583016522883) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_fleiss_kappa_5() {
    let matrix = ArrayList<ArrayList<Int64>>()
    matrix.add(ArrayList<Int64>([0, 0, 0, 1, 14]))
    matrix.add(ArrayList<Int64>([0, 2, 6, 4, 2]))
    matrix.add(ArrayList<Int64>([0, 0, 3, 5, 6]))
    matrix.add(ArrayList<Int64>([0, 3, 9, 2, 0]))
    matrix.add(ArrayList<Int64>([2, 2, 8, 1, 1]))
    matrix.add(ArrayList<Int64>([7, 7, 0, 0, 0]))
    matrix.add(ArrayList<Int64>([3, 2, 6, 3, 0]))
    matrix.add(ArrayList<Int64>([2, 5, 3, 2, 2]))
    matrix.add(ArrayList<Int64>([6, 5, 2, 1, 0]))
    matrix.add(ArrayList<Int64>([0, 2, 2, 3, 7]))
    if (abs(KappaCalculator.fleiss_kappa(matrix, 10, 5, 14) - 0.21147425143148907) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_fleiss_kappa_1()
    test_fleiss_kappa_2()
    test_fleiss_kappa_3()
    test_fleiss_kappa_4()
    test_fleiss_kappa_5()
}