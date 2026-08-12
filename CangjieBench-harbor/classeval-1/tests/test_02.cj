import std.math.*

func test_calculate_cylinder_area() {
    let areaCalculator = AreaCalculator(2.0)
    let cylinder_area = areaCalculator.calculate_cylinder_area(2.0)
    if (abs(cylinder_area - 50.27) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_cylinder_area_2() {
    let areaCalculator = AreaCalculator(2.0)
    let cylinder_area = areaCalculator.calculate_cylinder_area(0.0)
    if (abs(cylinder_area - 25.13) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_cylinder_area_3() {
    let areaCalculator = AreaCalculator(0.0)
    let cylinder_area = areaCalculator.calculate_cylinder_area(2000.0)
    if (abs(cylinder_area - 0.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_cylinder_area_4() {
    let areaCalculator = AreaCalculator(2.5)
    let cylinder_area = areaCalculator.calculate_cylinder_area(2.0)
    if (abs(cylinder_area - 70.68) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_cylinder_area_5() {
    let areaCalculator = AreaCalculator(2.5)
    let cylinder_area = areaCalculator.calculate_cylinder_area(1.5)
    if (abs(cylinder_area - 62.83) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_cylinder_area()
    test_calculate_cylinder_area_2()
    test_calculate_cylinder_area_3()
    test_calculate_cylinder_area_4()
    test_calculate_cylinder_area_5()
}
