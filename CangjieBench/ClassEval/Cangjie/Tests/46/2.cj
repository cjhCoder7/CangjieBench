func test_main() {
    let result1 = Interpolation.interpolate_1d(ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([1.5, 2.5]))
    let expected1 = ArrayList<Float64>([1.5, 2.5])
    if (result1 != expected1) {
        throw Exception("Test failed!")
    }
    
    let x = ArrayList<Float64>([1.0, 2.0, 3.0])
    let y = ArrayList<Float64>([1.0, 2.0, 3.0])
    let z = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([4.0, 5.0, 6.0]), ArrayList<Float64>([7.0, 8.0, 9.0])])
    let x_interp = ArrayList<Float64>([1.5, 2.5])
    let y_interp = ArrayList<Float64>([1.5, 2.5])
    let result2 = Interpolation.interpolate_2d(x, y, z, x_interp, y_interp)
    let expected2 = ArrayList<Float64>([3.0, 7.0])
    if (result2 != expected2) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}