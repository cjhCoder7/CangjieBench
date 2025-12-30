func test_cosine_similarities_1() {
    let vector1 = ArrayList<Float64>([1.0, 1.0])
    let vectors_all = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0]), ArrayList<Float64>([1.0, 1.0])])
    let similarities = VectorUtil.cosine_similarities(vector1, vectors_all)
    let res = ArrayList<Float64>([0.7071067811865475, 1.0])
    for (index in 0..similarities.size) {
        if (abs(similarities[index] - res[index]) > 0.000001) {
            throw Exception("Test failed!")
        }
    }
}

func test_cosine_similarities_2() {
    let vector1 = ArrayList<Float64>([1.0, 1.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0])
    let vectors_all = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0]), ArrayList<Float64>([1.0, 1.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.0])])
    let similarities = VectorUtil.cosine_similarities(vector1, vectors_all)
    let res = ArrayList<Float64>([0.8660254037844387, 0.8164965809277261])
    for (index in 0..similarities.size) {
        if (abs(similarities[index] - res[index]) > 0.000001) {
            throw Exception("Test failed!")
        }
    }
}

func test_cosine_similarities_3() {
    let vector1 = ArrayList<Float64>([1.0, 1.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0])
    let vectors_all = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0]), ArrayList<Float64>([1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0])])
    let similarities = VectorUtil.cosine_similarities(vector1, vectors_all)
    let res = ArrayList<Float64>([0.8660254037844387, 0.7559289460184544])
    for (index in 0..similarities.size) {
        if (abs(similarities[index] - res[index]) > 0.000001) {
            throw Exception("Test failed!")
        }
    }
}

func test_cosine_similarities_4() {
    let vector1 = ArrayList<Float64>([1.0, 1.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0])
    let vectors_all = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0]), ArrayList<Float64>([1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0])])
    let similarities = VectorUtil.cosine_similarities(vector1, vectors_all)
    let res = ArrayList<Float64>([0.8660254037844387, 0.7071067811865475])
    for (index in 0..similarities.size) {
        if (abs(similarities[index] - res[index]) > 0.000001) {
            throw Exception("Test failed!")
        }
    }
}

func test_cosine_similarities_5() {
    let vector1 = ArrayList<Float64>([1.0, 1.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0])
    let vectors_all = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0]), ArrayList<Float64>([0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0])])
    let similarities = VectorUtil.cosine_similarities(vector1, vectors_all)
    let res = ArrayList<Float64>([0.8660254037844387, 0.5669467095138409])
    for (index in 0..similarities.size) {
        if (abs(similarities[index] - res[index]) > 0.000001) {
            throw Exception("Test failed!")
        }
    }
}

main() {
    test_cosine_similarities_1()
    test_cosine_similarities_2()
    test_cosine_similarities_3()
    test_cosine_similarities_4()
    test_cosine_similarities_5()
}