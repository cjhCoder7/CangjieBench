func test_datastatistics2() {
    let ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
    let res = ds2.get_sum()
    if (res != 10.0) {
        throw Exception("Test failed!")
    }

    let res2 = ds2.get_min()
    if (res2 != 1.0) {
        throw Exception("Test failed!")
    }

    let res3 = ds2.get_max()
    if (res3 != 4.0) {
        throw Exception("Test failed!")
    }

    let res4 = ds2.get_variance()
    if (abs(res4 - 1.25) > 0.01) {
        throw Exception("Test failed!")
    }

    let res5 = ds2.get_std_deviation()
    if (abs(res5 - 1.12) > 0.01) {
        throw Exception("Test failed!")
    }

    let res6 = ds2.get_correlation()
    if (abs(res6 - 1.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_datastatistics2()
}
