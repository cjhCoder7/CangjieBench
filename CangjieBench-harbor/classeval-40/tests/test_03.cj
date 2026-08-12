import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs

func test_main() {
    let fitnessTracker = FitnessTracker(1.8, 70.0, 20, "male")
    if (abs(fitnessTracker.get_BMI() - 21.604938271604937) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (fitnessTracker.condition_judge() != 0) {
        throw Exception("Test failed!")
    }
    if (abs(fitnessTracker.calculate_calorie_intake() - 862.75) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
