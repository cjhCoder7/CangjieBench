import std.collection.ArrayList
import std.sort.sort

main() {
    if (move_one_ball(ArrayList<Int64>([3, 4, 5, 1, 2])) != true) {
        throw Exception("Test Failed!")
    }
    if (move_one_ball(ArrayList<Int64>([3, 5, 10, 1, 2])) != true) {
        throw Exception("Test Failed!")
    }
    if (move_one_ball(ArrayList<Int64>([4, 3, 1, 2])) != false) {
        throw Exception("Test Failed!")
    }
    if (move_one_ball(ArrayList<Int64>([3, 5, 4, 1, 2])) != false) {
        throw Exception("Test Failed!")
    }
    if (move_one_ball(ArrayList<Int64>([])) != true) {
        throw Exception("Test Failed!")
    }
}
