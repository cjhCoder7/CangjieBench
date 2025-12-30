
main(){
    if (numerical_letter_grade(ArrayList<Float64>([4.0, 3.0, 1.7, 2.0, 3.5])) != ArrayList<String>(['A+', 'B', 'C-', 'C', 'A-'])) {
        throw Exception("Test Failed!")
    }
    if (numerical_letter_grade(ArrayList<Float64>([1.2])) != ArrayList<String>(['D+'])) {
        throw Exception("Test Failed!")
    }
    if (numerical_letter_grade(ArrayList<Float64>([0.5])) != ArrayList<String>(['D-'])) {
        throw Exception("Test Failed!")
    }
    if (numerical_letter_grade(ArrayList<Float64>([0.0])) != ArrayList<String>(['E'])) {
        throw Exception("Test Failed!")
    }
    if (numerical_letter_grade(ArrayList<Float64>([1.0, 0.3, 1.5, 2.8, 3.3])) != ArrayList<String>(['D', 'D-', 'C-', 'B', 'B+'])) {
        throw Exception("Test Failed!")
    }
    if (numerical_letter_grade(ArrayList<Float64>([0.0, 0.7])) != ArrayList<String>(['E', 'D-'])) {
        throw Exception("Test Failed!")
    }
}