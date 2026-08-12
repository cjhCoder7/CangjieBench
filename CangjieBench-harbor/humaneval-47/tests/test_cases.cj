import std.collection.ArrayList
import std.sort.sort

main(){
    if (median(ArrayList<Int64>([3, 1, 2, 4, 5])) != 3.0) {
        throw Exception("Test Failed!")
    }
    if (median(ArrayList<Int64>([-10, 4, 6, 1000, 10, 20])) != 8.0) {
        throw Exception("Test Failed!")
    }
    if (median(ArrayList<Int64>([5])) != 5.0) {
        throw Exception("Test Failed!")
    }
    if (median(ArrayList<Int64>([6, 5])) != 5.5) {
        throw Exception("Test Failed!")
    }
    if (median(ArrayList<Int64>([8, 1, 3, 9, 9, 2, 7])) != 7.0) {
        throw Exception("Test Failed!")
    }
}
