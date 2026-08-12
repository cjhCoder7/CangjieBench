import std.collection.ArrayList
import std.sort.sort

main() {
    if (sorted_list_sum(ArrayList<String>(["aa", "a", "aaa"])) != ArrayList<String>(["aa"])) {
        throw Exception("Test Failed!")
    }
    if (sorted_list_sum(ArrayList<String>(["school", "AI", "asdf", "b"])) != ArrayList<String>(["AI", "asdf", "school"])) {
        throw Exception("Test Failed!")
    }
    if (sorted_list_sum(ArrayList<String>(["d", "b", "c", "a"])) != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (sorted_list_sum(ArrayList<String>(["d", "dcba", "abcd", "a"])) != ArrayList<String>(["abcd", "dcba"])) {
        throw Exception("Test Failed!")
    }
    if (sorted_list_sum(ArrayList<String>(["AI", "ai", "au"])) != ArrayList<String>(["AI", "ai", "au"])) {
        throw Exception("Test Failed!")
    }
    if (sorted_list_sum(ArrayList<String>(["a", "b", "b", "c", "c", "a"])) != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (sorted_list_sum(ArrayList<String>(["aaaa", "bbbb", "dd", "cc"])) != ArrayList<String>(["cc", "dd", "aaaa", "bbbb"])) {
        throw Exception("Test Failed!")
    }
}
