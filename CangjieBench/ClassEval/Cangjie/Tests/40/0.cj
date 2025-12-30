func test_get_BMI() {
    let fitnessTracker = FitnessTracker(1.8, 70.0, 20, "male")
    if (abs(fitnessTracker.get_BMI() - 21.604938271604937) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_get_BMI_2() {
    let fitnessTracker = FitnessTracker(1.8, 50.0, 20, "male")
    if (abs(fitnessTracker.get_BMI() - 15.432098765432098) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_get_BMI_3() {
    let fitnessTracker = FitnessTracker(1.72, 53.0, 20, "male")
    if (abs(fitnessTracker.get_BMI() - 17.915089237425637) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_get_BMI_4() {
    let fitnessTracker = FitnessTracker(1.72, 60.0, 20, "male")
    if (abs(fitnessTracker.get_BMI() - 20.281233098972418) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_get_BMI_5() {
    let fitnessTracker = FitnessTracker(1.72, 65.0, 20, "male")
    if (abs(fitnessTracker.get_BMI() - 21.971335857220122) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_BMI()
    test_get_BMI_2()
    test_get_BMI_3()
    test_get_BMI_4()
    test_get_BMI_5()
}