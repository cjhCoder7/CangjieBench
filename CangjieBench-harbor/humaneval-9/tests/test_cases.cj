import std.collection.ArrayList

main(){
    if (rolling_max(ArrayList<Int64>()) != ArrayList<Int64>()) {
        throw Exception("Test Failed!")
    }
    if (rolling_max(ArrayList<Int64>([1, 2, 3, 4])) != ArrayList<Int64>([1, 2, 3, 4])) {
        throw Exception("Test Failed!")
    }
    if (rolling_max(ArrayList<Int64>([4, 3, 2, 1])) != ArrayList<Int64>([4, 4, 4, 4])) {
        throw Exception("Test Failed!")
    }
    if (rolling_max(ArrayList<Int64>([3, 2, 3, 100, 3])) != ArrayList<Int64>([3, 3, 3, 100, 100])) {
        throw Exception("Test Failed!")
    }
}
