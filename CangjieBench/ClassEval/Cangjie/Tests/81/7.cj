func test_main() {
    if (abs(Statistics3.median(ArrayList<Int64>([1, 2, 3, 4])) - 2.5) > 0.000001) {
        throw Exception("Test failed!")
    }
    
    let mode_result = Statistics3.mode(ArrayList<Int64>([1, 2, 3, 3]))
    let mode_expected = ArrayList<Int64>([3])
    if (mode_result != mode_expected) {
        throw Exception("Test failed!")
    }
    
    if (abs((Statistics3.correlation(ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6])) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    
    if (abs((Statistics3.mean(ArrayList<Int64>([1, 2, 3])) ?? 0.0) - 2.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    
    let correlation_matrix_input = ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]), ArrayList<Int64>([7, 8, 9])])
    let correlation_matrix_result = Statistics3.correlation_matrix(correlation_matrix_input)
    let correlation_matrix_expected = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0]), ArrayList<Float64>([1.0, 1.0, 1.0])])
    if (correlation_matrix_result != correlation_matrix_expected) {
        throw Exception("Test failed!")
    }
    
    if (abs((Statistics3.standard_deviation(ArrayList<Int64>([1, 2, 3])) ?? 0.0) - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    
    let z_score_result = Statistics3.z_score(ArrayList<Int64>([1, 2, 3, 4]))
    let z_score_expected = ArrayList<Float64>([-1.161895003862225, -0.3872983346207417, 0.3872983346207417, 1.161895003862225])
    if (z_score_result != z_score_expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}