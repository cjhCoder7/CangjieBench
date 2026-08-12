import std.collection.ArrayList
import std.collection.HashMap

main(){
    if (filter_integers(ArrayList<Any>()) != ArrayList<Int64>()) {
        throw Exception("Test Failed!")
    }
    if (filter_integers(ArrayList<Any>([4, HashMap<Int64, Int64>(), ArrayList<Int64>(), 23.2, 9, 'adasd'])) != ArrayList<Int64>([4, 9])) {
        throw Exception("Test Failed!")
    }
    if (filter_integers(ArrayList<Any>([3, 'c', 3, 3, 'a', 'b'])) != ArrayList<Int64>([3, 3, 3])) {
        throw Exception("Test Failed!")
    }
}
