
main() {
    if (double_the_difference(ArrayList<Float64>([])) != 0) {
        throw Exception("Test Failed!")
    }
    if (double_the_difference(ArrayList<Float64>([5.0, 4.0])) != 25) {
        throw Exception("Test Failed!")
    }
    if (double_the_difference(ArrayList<Float64>([0.1, 0.2, 0.3])) != 0) {
        throw Exception("Test Failed!")
    }
    if (double_the_difference(ArrayList<Float64>([-10.0, -20.0, -30.0])) != 0) {
        throw Exception("Test Failed!")
    }
    if (double_the_difference(ArrayList<Float64>([-1.0, -2.0, 8.0])) != 0) {
        throw Exception("Test Failed!")
    }
    if (double_the_difference(ArrayList<Float64>([0.2, 3.0, 5.0])) != 34) {
        throw Exception("Test Failed!")
    }

    var lst = ArrayList<Float64>()
    for (i in -99..100:2) {
        lst.add(Float64(i))
    }
    var odd_sum = 0
    for (i in lst) {
        if (Int64(i) % 2 != 0 && i > 0.0) {
            odd_sum += Int64(i ** 2)
        }
    }
    if (double_the_difference(lst) != odd_sum) {
        throw Exception("Test Failed!")
    }
}
