import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs

class FitnessTracker {

    /*
    This is a class as fitness tracker that implements to calculate BMI (Body Mass Index) and calorie intake based on the user's height, weight, age, and sex.
    */

    let height: Float64
    let weight: Float64
    let age: Int64
    let sex: String
    let BMI_std: ArrayList<HashMap<String, ArrayList<Int64>>>

    public init(height: Float64, weight: Float64, age: Int64, sex: String) {
        /*
        Initialize the class with height, weight, age, and sex, and calculate the BMI standard based on sex, and male is 20-25, female is 19-24.
        */
        this.height = height
        this.weight = weight
        this.age = age
        this.sex = sex
        this.BMI_std = ArrayList<HashMap<String, ArrayList<Int64>>>()
        this.BMI_std.add(HashMap<String, ArrayList<Int64>>([("male", ArrayList<Int64>([20, 25]))]))
        this.BMI_std.add(HashMap<String, ArrayList<Int64>>([("female", ArrayList<Int64>([19, 24]))]))
    }

    public func get_BMI(): Float64 {
        /*
        Calculate the BMI based on the height and weight.
        :return: BMI,which is the weight divide by the square of height, Float64.
        >>> fitnessTracker = FitnessTracker(1.8, 70.0, 20, "male")
        >>> fitnessTracker.get_BMI()
        21.604938271604937

        */

    }

    public func condition_judge(): Int64 {
        /*
        Judge the condition of the user based on the BMI standard.
        :return: 1 if the user is too fat, -1 if the user is too thin, 0 if the user is normal, Int64.
        >>> fitnessTracker = FitnessTracker(1.8, 70.0, 20, "male")
        >>> fitnessTracker.condition_judge()
        -1

        */
        
    }

    public func calculate_calorie_intake(): Float64 {
        /*
        Calculate the calorie intake based on the user's condition and BMR (Basal Metabolic Rate),BMR is calculated based on the user's height, weight, age, and sex,male is Float64(10) * this.weight + 6.25 * this.height - Float64(5) * Float64(this.age) + Float64(5),female is Float64(10) * this.weight + 6.25 * this.height - Float64(5) * Float64(this.age) - Float64(161), and the calorie intake is calculated based on the BMR and the user's condition,if the user is too fat, the calorie intake is BMR * 1.2, if the user is too thin, the calorie intake is BMR * 1.6, if the user is normal, the calorie intake is BMR * 1.4.
        :return: calorie intake, Float64.
        >>> fitnessTracker = FitnessTracker(1.8, 70.0, 20, "male")
        >>> fitnessTracker.calculate_calorie_intake()
        986.0

        */
        
    }
}

