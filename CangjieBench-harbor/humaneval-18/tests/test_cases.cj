main(){
    if (how_many_times('', 'x') != 0) {
        throw Exception("Test Failed!")
    }
    if (how_many_times('xyxyxyx', 'x') != 4) {
        throw Exception("Test Failed!")
    }
    if (how_many_times('cacacacac', 'cac') != 4) {
        throw Exception("Test Failed!")
    }
    if (how_many_times('john doe', 'john') != 1) {
        throw Exception("Test Failed!")
    }
}
