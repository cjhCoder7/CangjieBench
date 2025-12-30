
main(){
    var result = get_row(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1,2,3,4,5,6]), ArrayList<Int64>([1,2,3,4,1,6]), ArrayList<Int64>([1,2,3,4,5,1])]), 1)
    if (result.size != 5) {
        throw Exception("Test Failed!")
    }
    if (result[0] != (0, 0) || result[1] != (1, 4) || result[2] != (1, 0) || result[3] != (2, 5) || result[4] != (2, 0)) {
        throw Exception("Test Failed!")
    }

    result = get_row(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1,2,3,4,5,6]), ArrayList<Int64>([1,2,3,4,5,6]), ArrayList<Int64>([1,2,3,4,5,6]), ArrayList<Int64>([1,2,3,4,5,6]), ArrayList<Int64>([1,2,3,4,5,6]), ArrayList<Int64>([1,2,3,4,5,6])]), 2)
    if (result.size != 6) {
        throw Exception("Test Failed!")
    }
    if (result[0] != (0, 1) || result[1] != (1, 1) || result[2] != (2, 1) || result[3] != (3, 1) || result[4] != (4, 1) || result[5] != (5, 1)) {
        throw Exception("Test Failed!")
    }

    result = get_row(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1,2,3,4,5,6]), ArrayList<Int64>([1,2,3,4,5,6]), ArrayList<Int64>([1,1,3,4,5,6]), ArrayList<Int64>([1,2,1,4,5,6]), ArrayList<Int64>([1,2,3,1,5,6]), ArrayList<Int64>([1,2,3,4,1,6]), ArrayList<Int64>([1,2,3,4,5,1])]), 1)
    if (result.size != 12) {
        throw Exception("Test Failed!")
    }
    if (result[0] != (0, 0) || result[1] != (1, 0) || result[2] != (2, 1) || result[3] != (2, 0) || result[4] != (3, 2) || result[5] != (3, 0) || result[6] != (4, 3) || result[7] != (4, 0) || result[8] != (5, 4) || result[9] != (5, 0) || result[10] != (6, 5) || result[11] != (6, 0)) {
        throw Exception("Test Failed!")
    }

    result = get_row(ArrayList<ArrayList<Int64>>([]), 1)
    if (result.size != 0) {
        throw Exception("Test Failed!")
    }

    result = get_row(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1])]), 2)
    if (result.size != 0) {
        throw Exception("Test Failed!")
    }

    result = get_row(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([]), ArrayList<Int64>([1]), ArrayList<Int64>([1, 2, 3])]), 3)
    if (result.size != 1) {
        throw Exception("Test Failed!")
    }
    if (result[0] != (2, 2)) {
        throw Exception("Test Failed!")
    }
}