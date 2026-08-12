import std.collection.ArrayList

main(){
    if (concatenate(ArrayList<String>()) != '') {
        throw Exception("Test failed!")
    }
    if (concatenate(ArrayList<String>(['x', 'y', 'z'])) != 'xyz') {
        throw Exception("Test failed!")
    }
    if (concatenate(ArrayList<String>(['x', 'y', 'z', 'w', 'k'])) != 'xyzwk') {
        throw Exception("Test failed!")
    }
}
