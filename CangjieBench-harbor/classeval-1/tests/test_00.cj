import std.math.*

func test_calculate_circle_area() {
    let areaCalculator = AreaCalculator(2.0)
    let circle_area = areaCalculator.calculate_circle_area()
    if (abs(circle_area - 12.56) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_circle_area_2() {
    let areaCalculator = AreaCalculator(2.5)
    let circle_area = areaCalculator.calculate_circle_area()
    if (abs(circle_area - 19.63) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_circle_area_3() {
    let areaCalculator = AreaCalculator(2000.0)
    let circle_area = areaCalculator.calculate_circle_area()
    if (abs(circle_area - 12566370.40) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_circle_area_4() {
    let areaCalculator = AreaCalculator(0.0)
    let circle_area = areaCalculator.calculate_circle_area()
    if (abs(circle_area - 0.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_circle_area_5() {
    let areaCalculator = AreaCalculator(0.1)
    let circle_area = areaCalculator.calculate_circle_area()
    if (abs(circle_area - 0.031) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_circle_area()
    test_calculate_circle_area_2()
    test_calculate_circle_area_3()
    test_calculate_circle_area_4()
    test_calculate_circle_area_5()
}
