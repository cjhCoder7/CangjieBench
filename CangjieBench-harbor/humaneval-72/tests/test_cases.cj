import std.collection.ArrayList

main(){
    if (will_it_fly(ArrayList<Int64>([3, 2, 3]), 9) != true) {
        throw Exception("Test Failed!")
    }
    if (will_it_fly(ArrayList<Int64>([1, 2]), 5) != false) {
        throw Exception("Test Failed!")
    }
    if (will_it_fly(ArrayList<Int64>([3]), 5) != true) {
        throw Exception("Test Failed!")
    }
    if (will_it_fly(ArrayList<Int64>([3, 2, 3]), 1) != false) {
        throw Exception("Test Failed!")
    }
    if (will_it_fly(ArrayList<Int64>([1, 2, 3]), 6) != false) {
        throw Exception("Test Failed!")
    }
    if (will_it_fly(ArrayList<Int64>([5]), 5) != true) {
        throw Exception("Test Failed!")
    }
}
