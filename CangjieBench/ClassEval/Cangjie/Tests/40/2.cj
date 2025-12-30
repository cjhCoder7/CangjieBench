func test_calculate_calorie_intake() {
    let fitnessTracker = FitnessTracker(1.8, 70.0, 20, "female")
    if (abs(fitnessTracker.calculate_calorie_intake() - 630.3499999999999) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_calculate_calorie_intake_2() {
    let fitnessTracker = FitnessTracker(1.72, 80.0, 22, "female")
    if (abs(fitnessTracker.calculate_calorie_intake() - 647.6999999999999) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_calculate_calorie_intake_3() {
    let fitnessTracker = FitnessTracker(1.72, 53.0, 22, "male")
    if (abs(fitnessTracker.calculate_calorie_intake() - 697.2) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_calculate_calorie_intake_4() {
    let fitnessTracker = FitnessTracker(1.72, 60.0, 22, "male")
    if (abs(fitnessTracker.calculate_calorie_intake() - 708.05) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_calculate_calorie_intake_5() {
    let fitnessTracker = FitnessTracker(1.72, 75.0, 22, "male")
    if (abs(fitnessTracker.calculate_calorie_intake() - 786.9) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_calorie_intake()
    test_calculate_calorie_intake_2()
    test_calculate_calorie_intake_3()
    test_calculate_calorie_intake_4()
    test_calculate_calorie_intake_5()
}