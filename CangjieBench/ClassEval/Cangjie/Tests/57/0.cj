func test_mrr_1() {
    let mc2 = MetricsCalculator2()
    let (res1, res2) = MetricsCalculator2.mrr((ArrayList<Int64>([1, 0, 1, 0]), 4))
    if (abs(res1 - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([1.0])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_mrr_2() {
    let (res1, res2) = MetricsCalculator2.mrr((ArrayList<Int64>([0, 0, 0, 1]), 4))
    if (abs(res1 - 0.25) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.25])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_mrr_3() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 0, 1, 0]), 4))
    input.add((ArrayList<Int64>([0, 1, 0, 1]), 4))
    let (res1, res2) = MetricsCalculator2.mrr(input)
    if (abs(res1 - 0.75) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([1.0, 0.5])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_mrr_4() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 1, 1, 0]), 4))
    input.add((ArrayList<Int64>([0, 0, 0, 1]), 4))
    let (res1, res2) = MetricsCalculator2.mrr(input)
    if (abs(res1 - 0.625) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([1.0, 0.25])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_mrr_5() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 0, 1, 1]), 4))
    input.add((ArrayList<Int64>([0, 1, 0, 0]), 4))
    let (res1, res2) = MetricsCalculator2.mrr(input)
    if (abs(res1 - 0.75) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([1.0, 0.5])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_mrr_6() {
    try {
        MetricsCalculator2.mrr(1)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        // Expected exception
    }
}

func test_mrr_7() {
    let (res1, res2) = MetricsCalculator2.mrr(ArrayList<(ArrayList<Int64>, Int64)>())
    if (abs(res1 - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.0])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_mrr_8() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 0, 1, 1]), 0))
    input.add((ArrayList<Int64>([0, 1, 0, 0]), 0))
    let (res1, res2) = MetricsCalculator2.mrr(input)
    if (abs(res1 - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.0, 0.0])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_mrr_1()
    test_mrr_2()
    test_mrr_3()
    test_mrr_4()
    test_mrr_5()
    test_mrr_6()
    test_mrr_7()
    test_mrr_8()
}