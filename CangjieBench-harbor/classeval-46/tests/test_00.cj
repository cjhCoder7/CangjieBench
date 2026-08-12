import std.collection.ArrayList

func test_interpolate_1d() {
    let result = Interpolation.interpolate_1d(ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([1.5, 2.5]))
    let expected = ArrayList<Float64>([1.5, 2.5])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_1d_2() {
    let result = Interpolation.interpolate_1d(ArrayList<Float64>([1.0, 6.0, 4.0]), ArrayList<Float64>([1.0, 2.0, 5.0]), ArrayList<Float64>([1.5, 2.5]))
    let expected = ArrayList<Float64>([1.1, 1.3])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_1d_3() {
    let result = Interpolation.interpolate_1d(ArrayList<Float64>([1.0, 6.0, 4.0]), ArrayList<Float64>([1.0, 7.0, 5.0]), ArrayList<Float64>([1.5, 2.5]))
    let expected = ArrayList<Float64>([1.6, 2.8])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_1d_4() {
    let result = Interpolation.interpolate_1d(ArrayList<Float64>([1.0, 6.0, 4.0]), ArrayList<Float64>([1.0, 2.0, 5.0]), ArrayList<Float64>([2.0, 3.0]))
    let expected = ArrayList<Float64>([1.2, 1.4])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_1d_5() {
    let result = Interpolation.interpolate_1d(ArrayList<Float64>([1.0, 6.0, 4.0]), ArrayList<Float64>([1.0, 7.0, 5.0]), ArrayList<Float64>([2.0, 3.0]))
    let expected = ArrayList<Float64>([2.2, 3.4])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_1d_6() {
    let result = Interpolation.interpolate_1d(ArrayList<Float64>([1.0, 6.0, 4.0]), ArrayList<Float64>([1.0, 7.0, 5.0]), ArrayList<Float64>())
    let expected = ArrayList<Float64>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_1d_7() {
    let result = Interpolation.interpolate_1d(ArrayList<Float64>(), ArrayList<Float64>(), ArrayList<Float64>())
    let expected = ArrayList<Float64>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_interpolate_1d()
    test_interpolate_1d_2()
    test_interpolate_1d_3()
    test_interpolate_1d_4()
    test_interpolate_1d_5()
    test_interpolate_1d_6()
    test_interpolate_1d_7()
}
