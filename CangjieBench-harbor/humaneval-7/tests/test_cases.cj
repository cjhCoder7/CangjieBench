import std.collection.ArrayList

main(){
    if (filter_by_substring(ArrayList<String>([]), 'john') != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (filter_by_substring(ArrayList<String>(['xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx']), 'xxx') != ArrayList<String>(['xxx', 'xxxAAA', 'xxx'])) {
        throw Exception("Test Failed!")
    }
    if (filter_by_substring(ArrayList<String>(['xxx', 'asd', 'aaaxxy', 'john doe', 'xxxAAA', 'xxx']), 'xx') != ArrayList<String>(['xxx', 'aaaxxy', 'xxxAAA', 'xxx'])) {
        throw Exception("Test Failed!")
    }
    if (filter_by_substring(ArrayList<String>(['grunt', 'trumpet', 'prune', 'gruesome']), 'run') != ArrayList<String>(['grunt', 'prune'])) {
        throw Exception("Test Failed!")
    }
}
