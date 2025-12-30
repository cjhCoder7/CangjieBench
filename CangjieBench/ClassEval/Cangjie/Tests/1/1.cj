func test_calculate_sphere_area() {
    let areaCalculator = AreaCalculator(2.0)
    let sphere_area = areaCalculator.calculate_sphere_area()
    if (abs(sphere_area - 50.27) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_sphere_area_2() {
    let areaCalculator = AreaCalculator(2.5)
    let sphere_area = areaCalculator.calculate_sphere_area()
    if (abs(sphere_area - 78.54) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_sphere_area_3() {
    let areaCalculator = AreaCalculator(2000.0)
    let sphere_area = areaCalculator.calculate_sphere_area()
    if (abs(sphere_area - 50265481.60) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_sphere_area_4() {
    let areaCalculator = AreaCalculator(0.0)
    let sphere_area = areaCalculator.calculate_sphere_area()
    if (abs(sphere_area - 0.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_sphere_area_5() {
    let areaCalculator = AreaCalculator(0.1)
    let sphere_area = areaCalculator.calculate_sphere_area()
    if (abs(sphere_area - 0.13) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_sphere_area()
    test_calculate_sphere_area_2()
    test_calculate_sphere_area_3()
    test_calculate_sphere_area_4()
    test_calculate_sphere_area_5()
}