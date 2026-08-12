import std.collection.ArrayList
import std.math.abs

func test_kappacalculator() {
    let matrix1 = ArrayList<ArrayList<Int64>>()
    matrix1.add(ArrayList<Int64>([2, 1, 1]))
    matrix1.add(ArrayList<Int64>([1, 2, 1]))
    matrix1.add(ArrayList<Int64>([1, 1, 2]))
    if (abs(KappaCalculator.kappa(matrix1, 3) - 0.25) > 0.000001) {
        throw Exception("Test failed!")
    }
    
    let matrix2 = ArrayList<ArrayList<Int64>>()
    matrix2.add(ArrayList<Int64>([0, 0, 0, 0, 14]))
    matrix2.add(ArrayList<Int64>([0, 2, 6, 4, 2]))
    matrix2.add(ArrayList<Int64>([0, 0, 3, 5, 6]))
    matrix2.add(ArrayList<Int64>([0, 3, 9, 2, 0]))
    matrix2.add(ArrayList<Int64>([2, 2, 8, 1, 1]))
    matrix2.add(ArrayList<Int64>([7, 7, 0, 0, 0]))
    matrix2.add(ArrayList<Int64>([3, 2, 6, 3, 0]))
    matrix2.add(ArrayList<Int64>([2, 5, 3, 2, 2]))
    matrix2.add(ArrayList<Int64>([6, 5, 2, 1, 0]))
    matrix2.add(ArrayList<Int64>([0, 2, 2, 3, 7]))
    if (abs(KappaCalculator.fleiss_kappa(matrix2, 10, 5, 14) - 0.20993070442195522) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_kappacalculator()
}
