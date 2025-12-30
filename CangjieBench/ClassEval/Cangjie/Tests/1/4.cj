func test_calculate_annulus_area() {
    let areaCalculator = AreaCalculator(2.0)
    let annulus_area = areaCalculator.calculate_annulus_area(1.0, 3.0)
    if (abs(annulus_area - 25.128) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_annulus_area_2() {
    let areaCalculator = AreaCalculator(2.5)
    let annulus_area = areaCalculator.calculate_annulus_area(3.0, 3.0)
    if (abs(annulus_area - 0.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_annulus_area_3() {
    let areaCalculator = AreaCalculator(2000.0)
    let annulus_area = areaCalculator.calculate_annulus_area(0.0, 1.0)
    if (abs(annulus_area - 3.14) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_annulus_area_4() {
    let areaCalculator = AreaCalculator(0.0)
    let annulus_area = areaCalculator.calculate_annulus_area(1.0, 3.0)
    if (abs(annulus_area - 25.13) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_annulus_area_5() {
    let areaCalculator = AreaCalculator(2.5)
    let annulus_area = areaCalculator.calculate_annulus_area(1.0, 3.0)
    if (abs(annulus_area - 25.13) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_annulus_area()
    test_calculate_annulus_area_2()
    test_calculate_annulus_area_3()
    test_calculate_annulus_area_4()
    test_calculate_annulus_area_5()
}