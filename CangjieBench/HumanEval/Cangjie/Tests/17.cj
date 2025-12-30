
main(){
    if (parse_music('') != ArrayList<Int64>()) {
        throw Exception("Test Failed!")
    }
    if (parse_music('o o o o') != ArrayList<Int64>([4, 4, 4, 4])) {
        throw Exception("Test Failed!")
    }
    if (parse_music('.| .| .| .|') != ArrayList<Int64>([1, 1, 1, 1])) {
        throw Exception("Test Failed!")
    }
    if (parse_music('o| o| .| .| o o o o') != ArrayList<Int64>([2, 2, 1, 1, 4, 4, 4, 4])) {
        throw Exception("Test Failed!")
    }
    if (parse_music('o| .| o| .| o o| o o|') != ArrayList<Int64>([2, 1, 2, 1, 4, 2, 4, 2])) {
        throw Exception("Test Failed!")
    }
}