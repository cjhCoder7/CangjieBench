func test_correlation_matrix() {
    let input = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]), ArrayList<Int64>([7, 8, 9])])
    let result = Statistics3.correlation_matrix(input)
    let expected = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_correlation_matrix_2() {
    let input = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6])])
    let result = Statistics3.correlation_matrix(input)
    let expected = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_correlation_matrix_3() {
    let input = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3])])
    let result = Statistics3.correlation_matrix(input)
    let expected = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([0.0, 0.0, 0.0]), ArrayList<Float64>([0.0, 0.0, 0.0]), ArrayList<Float64>([0.0, 0.0, 0.0])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_correlation_matrix_4() {
    let input = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]), ArrayList<Int64>([7, 8, 9]), ArrayList<Int64>([10, 11, 12])])
    let result = Statistics3.correlation_matrix(input)
    let expected = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_correlation_matrix_5() {
    let input = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]), ArrayList<Int64>([7, 8, 9]), ArrayList<Int64>([10, 11, 12]), ArrayList<Int64>([13, 14, 15])])
    let result = Statistics3.correlation_matrix(input)
    let expected = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0])])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_correlation_matrix()
    test_correlation_matrix_2()
    test_correlation_matrix_3()
    test_correlation_matrix_4()
    test_correlation_matrix_5()
}