
main(){
    if (rescale_to_unit(ArrayList<Float64>([2.0, 49.9])) != ArrayList<Float64>([0.0, 1.0])) {
        throw Exception("Test Failed!")
    }
    if (rescale_to_unit(ArrayList<Float64>([100.0, 49.9])) != ArrayList<Float64>([1.0, 0.0])) {
        throw Exception("Test Failed!")
    }
    if (rescale_to_unit(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0, 5.0])) != ArrayList<Float64>([0.0, 0.25, 0.5, 0.75, 1.0])) {
        throw Exception("Test Failed!")
    }
    if (rescale_to_unit(ArrayList<Float64>([2.0, 1.0, 5.0, 3.0, 4.0])) != ArrayList<Float64>([0.25, 0.0, 1.0, 0.5, 0.75])) {
        throw Exception("Test Failed!")
    }
    if (rescale_to_unit(ArrayList<Float64>([12.0, 11.0, 15.0, 13.0, 14.0])) != ArrayList<Float64>([0.25, 0.0, 1.0, 0.5, 0.75])) {
        throw Exception("Test Failed!")
    }
}