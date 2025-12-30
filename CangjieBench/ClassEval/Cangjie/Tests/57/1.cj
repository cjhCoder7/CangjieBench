func test_map_1() {
    let (res1, res2) = MetricsCalculator2.map((ArrayList<Int64>([1, 0, 1, 0]), 4))
    if (abs(res1 - 0.41666666666666663) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.41666666666666663])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_map_2() {
    let (res1, res2) = MetricsCalculator2.map((ArrayList<Int64>([0, 0, 0, 1]), 4))
    if (abs(res1 - 0.0625) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.0625])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_map_3() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 0, 1, 0]), 4))
    input.add((ArrayList<Int64>([0, 1, 0, 1]), 4))
    let (res1, res2) = MetricsCalculator2.map(input)
    if (abs(res1 - 0.3333333333333333) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.41666666666666663, 0.25])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_map_4() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 1, 1, 0]), 4))
    input.add((ArrayList<Int64>([0, 0, 0, 1]), 4))
    let (res1, res2) = MetricsCalculator2.map(input)
    if (abs(res1 - 0.40625) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.75, 0.0625])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_map_5() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 0, 1, 1]), 4))
    input.add((ArrayList<Int64>([0, 1, 0, 0]), 4))
    let (res1, res2) = MetricsCalculator2.map(input)
    if (abs(res1 - 0.3645833333333333) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.6041666666666666, 0.125])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_map_6() {
    try {
        MetricsCalculator2.map(1)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        // Expected exception
    }
}

func test_map_7() {
    let (res1, res2) = MetricsCalculator2.map(ArrayList<(ArrayList<Int64>, Int64)>())
    if (abs(res1 - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.0])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

func test_map_8() {
    let input = ArrayList<(ArrayList<Int64>, Int64)>()
    input.add((ArrayList<Int64>([1, 0, 1, 1]), 0))
    input.add((ArrayList<Int64>([0, 1, 0, 0]), 0))
    let (res1, res2) = MetricsCalculator2.map(input)
    if (abs(res1 - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
    let expected2 = ArrayList<Float64>([0.0, 0.0])
    if (res2 != expected2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_map_1()
    test_map_2()
    test_map_3()
    test_map_4()
    test_map_5()
    test_map_6()
    test_map_7()
    test_map_8()
}