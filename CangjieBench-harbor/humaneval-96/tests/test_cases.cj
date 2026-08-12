import std.collection.ArrayList

main(){
    if (count_up_to(5) != ArrayList<Int64>([2, 3])) {
        throw Exception("Test Failed!")
    }
    if (count_up_to(6) != ArrayList<Int64>([2, 3, 5])) {
        throw Exception("Test Failed!")
    }
    if (count_up_to(7) != ArrayList<Int64>([2, 3, 5])) {
        throw Exception("Test Failed!")
    }
    if (count_up_to(10) != ArrayList<Int64>([2, 3, 5, 7])) {
        throw Exception("Test Failed!")
    }
    if (count_up_to(0) != ArrayList<Int64>([])) {
        throw Exception("Test Failed!")
    }
    if (count_up_to(22) != ArrayList<Int64>([2, 3, 5, 7, 11, 13, 17, 19])) {
        throw Exception("Test Failed!")
    }
    if (count_up_to(1) != ArrayList<Int64>([])) {
        throw Exception("Test Failed!")
    }
    if (count_up_to(18) != ArrayList<Int64>([2, 3, 5, 7, 11, 13, 17])) {
        throw Exception("Test Failed!")
    }
    if (count_up_to(47) != ArrayList<Int64>([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])) {
        throw Exception("Test Failed!")
    }
    if (count_up_to(101) != ArrayList<Int64>([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])) {
        throw Exception("Test Failed!")
    }
}
