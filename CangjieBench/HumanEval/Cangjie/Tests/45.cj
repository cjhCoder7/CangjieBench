
main(){
    if (triangle_area(5.0, 3.0) != 7.5) {
        throw Exception("Test Failed!")
    }
    if (triangle_area(2.0, 2.0) != 2.0) {
        throw Exception("Test Failed!")
    }
    if (triangle_area(10.0, 8.0) != 40.0) {
        throw Exception("Test Failed!")
    }
}