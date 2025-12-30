func test_pdf() {
    let res = DataStatistics4.pdf(ArrayList<Float64>([1.0, 2.0, 3.0]), 1.0, 1.0)
    let expected = ArrayList<Float64>([0.3989422804014327, 0.24197072451914337, 0.05399096651318806])
    if (res.size != expected.size) {
        throw Exception("Test failed!")
    }
    for (i in 0..res.size) {
        if (abs(res[i] - expected[i]) > 0.01) {
            throw Exception("Test failed!")
        }
    }
}

func test_pdf_2() {
    let res = DataStatistics4.pdf(ArrayList<Float64>([1.0, 1.0, 1.0]), 1.0, 1.0)
    let expected = ArrayList<Float64>([0.3989422804014327, 0.3989422804014327, 0.3989422804014327])
    if (res.size != expected.size) {
        throw Exception("Test failed!")
    }
    for (i in 0..res.size) {
        if (abs(res[i] - expected[i]) > 0.01) {
            throw Exception("Test failed!")
        }
    }
}

func test_pdf_3() {
    let res = DataStatistics4.pdf(ArrayList<Float64>([1.0, 2.0, 3.0]), 2.0, 1.0)
    let expected = ArrayList<Float64>([0.24197072451914337, 0.3989422804014327, 0.24197072451914337])
    if (res.size != expected.size) {
        throw Exception("Test failed!")
    }
    for (i in 0..res.size) {
        if (abs(res[i] - expected[i]) > 0.01) {
            throw Exception("Test failed!")
        }
    }
}

func test_pdf_4() {
    let res = DataStatistics4.pdf(ArrayList<Float64>([1.0, 2.0, 3.0]), 1.0, 2.0)
    let expected = ArrayList<Float64>([0.19947114020071635, 0.17603266338214976, 0.12098536225957168])
    if (res.size != expected.size) {
        throw Exception("Test failed!")
    }
    for (i in 0..res.size) {
        if (abs(res[i] - expected[i]) > 0.01) {
            throw Exception("Test failed!")
        }
    }
}

func test_pdf_5() {
    let res = DataStatistics4.pdf(ArrayList<Float64>([1.0, 2.0, 3.0]), 2.0, 2.0)
    let expected = ArrayList<Float64>([0.17603266338214976, 0.19947114020071635, 0.17603266338214976])
    if (res.size != expected.size) {
        throw Exception("Test failed!")
    }
    for (i in 0..res.size) {
        if (abs(res[i] - expected[i]) > 0.01) {
            throw Exception("Test failed!")
        }
    }
}

main() {
    test_pdf()
    test_pdf_2()
    test_pdf_3()
    test_pdf_4()
    test_pdf_5()
}