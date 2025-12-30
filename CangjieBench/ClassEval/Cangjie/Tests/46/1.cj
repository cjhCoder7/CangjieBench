func test_interpolate_2d() {
    let x = ArrayList<Float64>([1.0, 2.0, 3.0])
    let y = ArrayList<Float64>([1.0, 2.0, 3.0])
    let z = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([4.0, 5.0, 6.0]), ArrayList<Float64>([7.0, 8.0, 9.0])])
    let x_interp = ArrayList<Float64>([1.5, 2.5])
    let y_interp = ArrayList<Float64>([1.5, 2.5])
    let result = Interpolation.interpolate_2d(x, y, z, x_interp, y_interp)
    let expected = ArrayList<Float64>([3.0, 7.0])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_2d_2() {
    let x = ArrayList<Float64>([1.0, 2.0, 3.0])
    let y = ArrayList<Float64>([1.0, 2.0, 3.0])
    let z = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([4.0, 5.0, 6.0]), ArrayList<Float64>([7.0, 8.0, 9.0])])
    let x_interp = ArrayList<Float64>([1.5, 2.5])
    let y_interp = ArrayList<Float64>([3.0, 4.0])
    let result = Interpolation.interpolate_2d(x, y, z, x_interp, y_interp)
    let expected = ArrayList<Float64>([4.5])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_2d_3() {
    let x = ArrayList<Float64>([1.0, 2.0, 3.0])
    let y = ArrayList<Float64>([1.0, 2.0, 3.0])
    let z = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([4.0, 5.0, 6.0]), ArrayList<Float64>([7.0, 8.0, 9.0])])
    let x_interp = ArrayList<Float64>([3.0, 4.0])
    let y_interp = ArrayList<Float64>([1.5, 2.5])
    let result = Interpolation.interpolate_2d(x, y, z, x_interp, y_interp)
    let expected = ArrayList<Float64>([7.5])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_2d_4() {
    let x = ArrayList<Float64>([1.0, 2.0, 3.0])
    let y = ArrayList<Float64>([1.0, 2.0, 3.0])
    let z = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([4.0, 5.0, 6.0]), ArrayList<Float64>([7.0, 8.0, 9.0])])
    let x_interp = ArrayList<Float64>([3.0, 4.0])
    let y_interp = ArrayList<Float64>([3.0, 4.0])
    let result = Interpolation.interpolate_2d(x, y, z, x_interp, y_interp)
    let expected = ArrayList<Float64>([9.0])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpolate_2d_5() {
    let x = ArrayList<Float64>([1.0, 2.0, 3.0])
    let y = ArrayList<Float64>([1.0, 2.0, 3.0])
    let z = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([4.0, 5.0, 6.0]), ArrayList<Float64>([7.0, 8.0, 9.0])])
    let x_interp = ArrayList<Float64>([1.5, 2.5])
    let y_interp = ArrayList<Float64>([1.5, 2.5])
    let result = Interpolation.interpolate_2d(x, y, z, x_interp, y_interp)
    let expected = ArrayList<Float64>([3.0, 7.0])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_interpolate_2d()
    test_interpolate_2d_2()
    test_interpolate_2d_3()
    test_interpolate_2d_4()
    test_interpolate_2d_5()
}