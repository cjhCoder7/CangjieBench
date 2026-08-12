import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs
import std.sort.sort
import std.math.sqrt

func test_z_score() {
    let result = Statistics3.z_score(ArrayList<Int64>([1, 2, 3, 4]))
    let expected = ArrayList<Float64>([-1.161895003862225, -0.3872983346207417, 0.3872983346207417, 1.161895003862225])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_z_score_2() {
    let result = Statistics3.z_score(ArrayList<Int64>([1, 1, 1, 1]))
    if (result != None) {
        throw Exception("Test failed!")
    }
}

func test_z_score_3() {
    let result = Statistics3.z_score(ArrayList<Int64>([1]))
    if (result != None) {
        throw Exception("Test failed!")
    }
}

func test_z_score_4() {
    let result = Statistics3.z_score(ArrayList<Int64>([1, 1, 2, 3]))
    let expected = ArrayList<Float64>([-0.7833494518006403, -0.7833494518006403, 0.26111648393354675, 1.3055824196677337])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_z_score_5() {
    let result = Statistics3.z_score(ArrayList<Int64>([1, 1, 1, 1, 1]))
    if (result != None) {
        throw Exception("Test failed!")
    }
}

main() {
    test_z_score()
    test_z_score_2()
    test_z_score_3()
    test_z_score_4()
    test_z_score_5()
}
