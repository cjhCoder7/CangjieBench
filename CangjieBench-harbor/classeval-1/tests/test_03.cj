import std.math.*

func test_calculate_sector_area() {
    let areaCalculator = AreaCalculator(1.5)
    let sector_area = areaCalculator.calculate_sector_area(3.1415926)
    if (abs(sector_area - 3.53) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_sector_area_2() {
    let areaCalculator = AreaCalculator(2.0)
    let sector_area = areaCalculator.calculate_sector_area(3.1415926/2.0)
    if (abs(sector_area - 3.14) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_sector_area_3() {
    let areaCalculator = AreaCalculator(2.0)
    let sector_area = areaCalculator.calculate_sector_area(0.0)
    if (abs(sector_area - 0.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_sector_area_4() {
    let areaCalculator = AreaCalculator(2.0)
    let sector_area = areaCalculator.calculate_sector_area(2.0*3.1415926)
    if (abs(sector_area - 12.56) > 0.01) {
        throw Exception("Test failed!")
    }
}

func test_calculate_sector_area_5() {
    let areaCalculator = AreaCalculator(0.0)
    let sector_area = areaCalculator.calculate_sector_area(3.1415926)
    if (abs(sector_area - 0.0) > 0.01) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_sector_area()
    test_calculate_sector_area_2()
    test_calculate_sector_area_3()
    test_calculate_sector_area_4()
    test_calculate_sector_area_5()
}
