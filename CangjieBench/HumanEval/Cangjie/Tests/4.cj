
main(){
    if (((mean_absolute_deviation(ArrayList<Float64>([1.0, 2.0, 3.0])) - 2.0/3.0) >= 1e-6 ) || (2.0/3.0 - mean_absolute_deviation(ArrayList<Float64>([1.0, 2.0, 3.0]))) >= 1e-6) {
        throw Exception("Test failed!")
    }
    if (((mean_absolute_deviation(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0])) - 1.0) >= 1e-6 ) || (1.0 - mean_absolute_deviation(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))) >= 1e-6) {
        throw Exception("Test failed!")
    }
    if (((mean_absolute_deviation(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0, 5.0])) - 6.0/5.0) >= 1e-6 ) || (6.0/5.0 - mean_absolute_deviation(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0, 5.0]))) >= 1e-6) {
        throw Exception("Test failed!")
    }
}