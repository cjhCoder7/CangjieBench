import std.collection.ArrayList
import std.math.sqrt
import std.math.exp
import std.math.abs

func test_main() {
    let res1 = DataStatistics4.correlation_coefficient(ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([4.0, 5.0, 6.0]))
    if (abs(res1 - 0.9999999999999998) > 0.0000000000000001) {
        throw Exception("Test failed!")
    }
    
    let res2 = DataStatistics4.skewness(ArrayList<Float64>([1.0, 2.0, 5.0]))
    if (abs(res2 - 2.3760224064818463) > 0.01) {
        throw Exception("Test failed!")
    }
    
    let res3 = DataStatistics4.kurtosis(ArrayList<Float64>([1.0, 2.0, 5.0]))
    if (abs(res3 - (-1.5000000000000002)) > 0.01) {
        throw Exception("Test failed!")
    }
    
    let res4 = DataStatistics4.pdf(ArrayList<Float64>([1.0, 2.0, 3.0]), 1.0, 1.0)
    let expected = ArrayList<Float64>([0.3989422804014327, 0.24197072451914337, 0.05399096651318806])
    if (res4.size != expected.size) {
        throw Exception("Test failed!")
    }
    for (i in 0..res4.size) {
        if (abs(res4[i] - expected[i]) > 0.01) {
            throw Exception("Test failed!")
        }
    }
}

main() {
    test_main()
}
