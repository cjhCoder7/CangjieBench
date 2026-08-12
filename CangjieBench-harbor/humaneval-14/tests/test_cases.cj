import std.collection.ArrayList

main(){
    if (all_prefixes('') != ArrayList<String>()) {
        throw Exception("Test Failed!")
    }
    if (all_prefixes('asdfgh') != ArrayList<String>(['a', 'as', 'asd', 'asdf', 'asdfg', 'asdfgh'])) {
        throw Exception("Test Failed!")
    }
    if (all_prefixes('WWW') != ArrayList<String>(['W', 'WW', 'WWW'])) {
        throw Exception("Test Failed!")
    }
}
