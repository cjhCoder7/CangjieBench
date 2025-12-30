func test_n_similarity_1() {
    let vector_list1 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0]), ArrayList<Float64>([0.0, 1.0])])
    let vector_list2 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([0.0, 0.0]), ArrayList<Float64>([1.0, 1.0])])
    let similarity = VectorUtil.n_similarity(vector_list1, vector_list2)
    if (abs(similarity - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_n_similarity_2() {
    let vector_list1 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 1.0]), ArrayList<Float64>([0.0, 1.0])])
    let vector_list2 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([0.0, 0.0]), ArrayList<Float64>([1.0, 1.0])])
    let similarity = VectorUtil.n_similarity(vector_list1, vector_list2)
    if (abs(similarity - 0.9486832980505137) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_n_similarity_3() {
    let vector_list1 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0]), ArrayList<Float64>([1.0, 1.0])])
    let vector_list2 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([0.0, 0.0]), ArrayList<Float64>([1.0, 1.0])])
    let similarity = VectorUtil.n_similarity(vector_list1, vector_list2)
    if (abs(similarity - 0.9486832980505137) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_n_similarity_4() {
    let vector_list1 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0]), ArrayList<Float64>([0.0, 1.0])])
    let vector_list2 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0]), ArrayList<Float64>([1.0, 1.0])])
    let similarity = VectorUtil.n_similarity(vector_list1, vector_list2)
    if (abs(similarity - 0.9486832980505137) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_n_similarity_5() {
    let vector_list1 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0]), ArrayList<Float64>([0.0, 1.0])])
    let vector_list2 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([0.0, 1.0]), ArrayList<Float64>([1.0, 1.0])])
    let similarity = VectorUtil.n_similarity(vector_list1, vector_list2)
    if (abs(similarity - 0.9486832980505137) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_n_similarity_6() {
    try {
        let vector_list1 = ArrayList<ArrayList<Float64>>()
        let vector_list2 = ArrayList<ArrayList<Float64>>()
        let similarity = VectorUtil.n_similarity(vector_list1, vector_list2)
        throw Exception("Test failed!")
    } catch (e: Exception) {
        // Expected exception
    }
}

main() {
    test_n_similarity_1()
    test_n_similarity_2()
    test_n_similarity_3()
    test_n_similarity_4()
    test_n_similarity_5()
    test_n_similarity_6()
}