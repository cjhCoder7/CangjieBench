func test_main() {
    let a = AvgPartition(ArrayList<Int64>([1, 2, 3, 4]), 2)
    if (a.setNum() != (2, 0)) {
        throw Exception("Test failed!")
    }
    if (a.get(0) != ArrayList<Int64>([1, 2])) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}