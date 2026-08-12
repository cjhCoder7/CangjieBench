import std.collection.HashMap
import std.collection.ArrayList
import std.math.abs
import std.math.sqrt
import std.math.log
import std.math.pow

func test_compute_idf_weight_dict_1() {
    let num_dict = HashMap<String, Float64>()
    num_dict["key1"] = 0.1
    num_dict["key2"] = 0.5
    let res = VectorUtil.compute_idf_weight_dict(2, num_dict)
    if (abs(res["key1"] - 1.0033021088637848) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (abs(res["key2"] - 0.6931471805599453) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_compute_idf_weight_dict_2() {
    let num_dict = HashMap<String, Float64>()
    num_dict["key1"] = 0.2
    num_dict["key2"] = 0.5
    let res = VectorUtil.compute_idf_weight_dict(2, num_dict)
    if (abs(res["key1"] - 0.9162907318741551) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (abs(res["key2"] - 0.6931471805599453) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_compute_idf_weight_dict_3() {
    let num_dict = HashMap<String, Float64>()
    num_dict["key1"] = 0.3
    num_dict["key2"] = 0.5
    let res = VectorUtil.compute_idf_weight_dict(2, num_dict)
    if (abs(res["key1"] - 0.8362480242006185) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (abs(res["key2"] - 0.6931471805599453) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_compute_idf_weight_dict_4() {
    let num_dict = HashMap<String, Float64>()
    num_dict["key1"] = 0.4
    num_dict["key2"] = 0.5
    let res = VectorUtil.compute_idf_weight_dict(2, num_dict)
    if (abs(res["key1"] - 0.7621400520468967) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (abs(res["key2"] - 0.6931471805599453) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_compute_idf_weight_dict_5() {
    let num_dict = HashMap<String, Float64>()
    num_dict["key1"] = 0.5
    num_dict["key2"] = 0.5
    let res = VectorUtil.compute_idf_weight_dict(2, num_dict)
    if (abs(res["key1"] - 0.6931471805599453) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (abs(res["key2"] - 0.6931471805599453) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_compute_idf_weight_dict_1()
    test_compute_idf_weight_dict_2()
    test_compute_idf_weight_dict_3()
    test_compute_idf_weight_dict_4()
    test_compute_idf_weight_dict_5()
}
