
main(){
    if (longest(ArrayList<String>()) != None) {
        throw Exception("Test Failed!")
    }
    if (longest(ArrayList<String>(['x', 'y', 'z'])) != 'x') {
        throw Exception("Test Failed!")
    }
    if (longest(ArrayList<String>(['x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc'])) != 'zzzz') {
        throw Exception("Test Failed!")
    }
}