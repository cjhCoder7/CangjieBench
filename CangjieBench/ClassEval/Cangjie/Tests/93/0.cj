func test_similarity_1() {
    let vector_1 = ArrayList<Float64>([1.0, 1.0])
    let vector_2 = ArrayList<Float64>([1.0, 0.0])
    let similarity = VectorUtil.similarity(vector_1, vector_2)
    if (abs(similarity - 0.7071067811865475) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_similarity_2() {
    let vector_1 = ArrayList<Float64>([1.0, 1.0])
    let vector_2 = ArrayList<Float64>([0.0, 0.0])
    let similarity = VectorUtil.similarity(vector_1, vector_2)
    if (abs(similarity - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_similarity_3() {
    let vector_1 = ArrayList<Float64>([1.0, 1.0])
    let vector_2 = ArrayList<Float64>([1.0, 1.0])
    let similarity = VectorUtil.similarity(vector_1, vector_2)
    if (abs(similarity - 1.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_similarity_4() {
    let vector_1 = ArrayList<Float64>([1.0, 1.0, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0])
    let vector_2 = ArrayList<Float64>([1.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0])
    let similarity = VectorUtil.similarity(vector_1, vector_2)
    if (abs(similarity - 0.8944271909999159) > 0.000001) {
        throw Exception("Test failed!")
    }
}

func test_similarity_5() {
    let vector_1 = ArrayList<Float64>([1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0])
    let vector_2 = ArrayList<Float64>([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])
    let similarity = VectorUtil.similarity(vector_1, vector_2)
    if (abs(similarity - 0.0) > 0.000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_similarity_1()
    test_similarity_2()
    test_similarity_3()
    test_similarity_4()
    test_similarity_5()
}