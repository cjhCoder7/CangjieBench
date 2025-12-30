
main() {
    if (sum_squares(ArrayList<Float64>([1.0, 2.0, 3.0])) != 14) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([1.0, 2.0, 3.0])) != 14) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([1.0, 3.0, 5.0, 7.0])) != 84) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([1.4, 4.2, 0.0])) != 29) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([-2.4, 1.0, 1.0])) != 6) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([100.0, 1.0, 15.0, 2.0])) != 10230) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([10000.0, 10000.0])) != 200000000) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([-1.4, 4.6, 6.3])) != 75) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([-1.4, 17.9, 18.9, 19.9])) != 1086) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([0.0])) != 0) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([-1.0])) != 1) {
        throw Exception("Test Failed!")
    }
    if (sum_squares(ArrayList<Float64>([-1.0, 1.0, 0.0])) != 2) {
        throw Exception("Test Failed!")
    }
}
