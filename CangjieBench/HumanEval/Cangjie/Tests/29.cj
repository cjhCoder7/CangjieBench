
main(){
    if (filter_by_prefix(ArrayList<String>(), 'john') != ArrayList<String>()) {
        throw Exception("Test failed!")
    }
    if (filter_by_prefix(ArrayList<String>(['xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx']), 'xxx') != ArrayList<String>(['xxx', 'xxxAAA', 'xxx'])) {
        throw Exception("Test failed!")
    }
}