import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs

func test_condition_judge() {
    let fitnessTracker = FitnessTracker(1.8, 45.0, 20, "female")
    if (fitnessTracker.condition_judge() != -1) {
        throw Exception("Test failed!")
    }
}

func test_condition_judge_2() {
    let fitnessTracker = FitnessTracker(1.72, 80.0, 22, "female")
    if (fitnessTracker.condition_judge() != 1) {
        throw Exception("Test failed!")
    }
}

func test_condition_judge_3() {
    let fitnessTracker = FitnessTracker(1.72, 53.0, 22, "male")
    if (fitnessTracker.condition_judge() != -1) {
        throw Exception("Test failed!")
    }
}

func test_condition_judge_4() {
    let fitnessTracker = FitnessTracker(1.72, 60.0, 22, "male")
    if (fitnessTracker.condition_judge() != 0) {
        throw Exception("Test failed!")
    }
}

func test_condition_judge_5() {
    let fitnessTracker = FitnessTracker(1.72, 75.0, 22, "male")
    if (fitnessTracker.condition_judge() != 1) {
        throw Exception("Test failed!")
    }
}

main() {
    test_condition_judge()
    test_condition_judge_2()
    test_condition_judge_3()
    test_condition_judge_4()
    test_condition_judge_5()
}
