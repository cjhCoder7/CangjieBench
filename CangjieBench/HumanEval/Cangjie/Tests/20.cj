
main(){
    if (find_closest_elements(ArrayList<Float64>([1.0, 2.0, 3.9, 4.0, 5.0, 2.2])) != (3.9, 4.0)) {
        throw Exception("Test Failed!")
    }
    if (find_closest_elements(ArrayList<Float64>([1.0, 2.0, 5.9, 4.0, 5.0])) != (5.0, 5.9)) {
        throw Exception("Test Failed!")
    }
    if (find_closest_elements(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])) != (2.0, 2.2)) {
        throw Exception("Test Failed!")
    }
    if (find_closest_elements(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])) != (2.0, 2.0)) {
        throw Exception("Test Failed!")
    }
    if (find_closest_elements(ArrayList<Float64>([1.1, 2.2, 3.1, 4.1, 5.1])) != (2.2, 3.1)) {
        throw Exception("Test Failed!")
    }
}