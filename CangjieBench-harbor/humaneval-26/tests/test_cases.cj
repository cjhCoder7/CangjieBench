import std.collection.ArrayList
import std.collection.HashMap

main(){
    if (remove_duplicates(ArrayList<Int64>()) != ArrayList<Int64>()) {
        throw Exception("Test failed!")
    }
    if (remove_duplicates(ArrayList<Int64>([1, 2, 3, 4])) != ArrayList<Int64>([1, 2, 3, 4])) {
        throw Exception("Test failed!")
    }
    if (remove_duplicates(ArrayList<Int64>([1, 2, 3, 2, 4, 3, 5])) != ArrayList<Int64>([1, 4, 5])) {
        throw Exception("Test failed!")
    }
}
