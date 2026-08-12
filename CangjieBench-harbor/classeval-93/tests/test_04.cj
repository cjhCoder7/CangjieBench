import std.collection.HashMap
import std.collection.ArrayList
import std.math.abs
import std.math.sqrt
import std.math.log
import std.math.pow

func test_vectorutil() {
    let vector_1 = ArrayList<Float64>([1.0, 1.0])
    let vector_2 = ArrayList<Float64>([1.0, 0.0])
    let similarity = VectorUtil.similarity(vector_1, vector_2)
    if (abs(similarity - 0.7071067811865475) > 0.000001) {
        throw Exception("Test failed!")
    }

    let vector1 = ArrayList<Float64>([1.0, 1.0])
    let vectors_all = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0]), ArrayList<Float64>([1.0, 1.0])])
    let similarities = VectorUtil.cosine_similarities(vector1, vectors_all)
    let res = ArrayList<Float64>([0.7071067811865475, 1.0])
    for (index in 0..similarities.size) {
        if (abs(similarities[index] - res[index]) > 0.000001) {
            throw Exception("Test failed!")
        }
    }

    let vector_list1 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0]), ArrayList<Float64>([0.0, 1.0])])
    let vector_list2 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([0.0, 0.0]), ArrayList<Float64>([1.0, 1.0])])
    let similarity2 = VectorUtil.n_similarity(vector_list1, vector_list2)
    if (abs(similarity2 - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }

    let num_dict = HashMap<String, Float64>()
    num_dict["key1"] = 0.1
    num_dict["key2"] = 0.5
    let res2 = VectorUtil.compute_idf_weight_dict(2, num_dict)
    if (abs(res2["key1"] - 1.0033021088637848) > 0.000001) {
        throw Exception("Test failed!")
    }
    if (abs(res2["key2"] - 0.6931471805599453) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_vectorutil()
}
