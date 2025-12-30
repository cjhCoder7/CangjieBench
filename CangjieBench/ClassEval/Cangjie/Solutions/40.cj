import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs

class FitnessTracker {

    let height: Float64
    let weight: Float64
    let age: Int64
    let sex: String
    let BMI_std: ArrayList<HashMap<String, ArrayList<Int64>>>

    public init(height: Float64, weight: Float64, age: Int64, sex: String) {
        this.height = height
        this.weight = weight
        this.age = age
        this.sex = sex
        this.BMI_std = ArrayList<HashMap<String, ArrayList<Int64>>>()
        this.BMI_std.add(HashMap<String, ArrayList<Int64>>([("male", ArrayList<Int64>([20, 25]))]))
        this.BMI_std.add(HashMap<String, ArrayList<Int64>>([("female", ArrayList<Int64>([19, 24]))]))
    }

    public func get_BMI(): Float64 {
        return this.weight / this.height ** 2
    }

    public func condition_judge(): Int64 {
        let BMI = this.get_BMI()
        var BMI_range = ArrayList<Int64>()
        if (this.sex == "male") {
            BMI_range = this.BMI_std[0]["male"]
        } else {
            BMI_range = this.BMI_std[1]["female"]
        }
        if (BMI > Float64(BMI_range[1])) {
            // too fat
            return 1
        } else if (BMI < Float64(BMI_range[0])) {
            // too thin
            return -1
        } else {
            // normal
            return 0
        }
    }

    public func calculate_calorie_intake(): Float64 {
        var BMR = 0.0
        if (this.sex == "male") {
            BMR = 10.0 * this.weight + 6.25 * this.height - 5.0 * Float64(this.age) + 5.0
        } else {
            BMR = 10.0 * this.weight + 6.25 * this.height - 5.0 * Float64(this.age) - 161.0
        }
        var calorie_intake = 0.0
        if (this.condition_judge() == 1) {
            calorie_intake = BMR * 1.2  // Sedentary lifestyle
        } else if (this.condition_judge() == -1) {
            calorie_intake = BMR * 1.6  // Active lifestyle
        } else {
            calorie_intake = BMR * 1.4  // Moderate lifestyle
        }
        return calorie_intake
    }
}

