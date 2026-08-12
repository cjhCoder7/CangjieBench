import std.math.*

func test_main() {
    let areaCalculator = AreaCalculator(2.0)
    if (abs(areaCalculator.calculate_circle_area() - 12.56) > 0.01) {
        throw Exception("Test failed!")
    }
    if (abs(areaCalculator.calculate_sphere_area() - 50.27) > 0.01) {
        throw Exception("Test failed!")
    }
    if (abs(areaCalculator.calculate_cylinder_area(2.0) - 50.27) > 0.01) {
        throw Exception("Test failed!")
    }
    if (abs(areaCalculator.calculate_sector_area(3.1415926) - 6.28) > 0.01) {
        throw Exception("Test failed!")
    }
    if (abs(areaCalculator.calculate_annulus_area(1.0, 3.0) - 25.128) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
