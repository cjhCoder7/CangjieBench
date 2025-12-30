func test_main() {
    let file_name = 'test.csv'
    let file_path = Path(file_name)
    let file = File(file_path, Write)
    file.write('a,b,c,d\nhElLo,YoU,ME,LoW'.toArray())
    file.close()

    let file_process = 'test_process.csv'
    let file_process_path = Path(file_process)
    let csvProcessor = CSVProcessor()
    let data = ArrayList<ArrayList<String>>([ArrayList<String>(['a', 'b', 'c', 'd']), ArrayList<String>(['hElLo', 'YoU', 'ME', 'LoW'])])
    if (csvProcessor.write_csv(data, file_name) != 1) {
        throw Exception("Test failed!")
    }
    let expected_title = ArrayList<String>(['a', 'b', 'c', 'd'])
    let expected_data = ArrayList<ArrayList<String>>([ArrayList<String>(['hElLo', 'YoU', 'ME', 'LoW'])])
    let (title, read_data) = csvProcessor.read_csv(file_name)
    if (expected_data != read_data) {
        throw Exception("Test failed!")
    }
    if (expected_title != title) {
        throw Exception("Test failed!")
    }

    let processed_title = ArrayList<String>(['a', 'b', 'c', 'd'])
    let processed_data = ArrayList<String>(['HELLO'])
    if (csvProcessor.process_csv_data(0, file_name) != 1) {
        throw Exception("Test failed!")
    }

    let (read_title, read_processed_data) = csvProcessor.read_csv(file_process)
    if (read_title != processed_title) {
        throw Exception("Test failed!")
    }
    if (read_processed_data[0] != processed_data) {
        throw Exception("Test failed!")
    }

    if (exists(file_path)) {
        remove(file_path)
    }
    if (exists(file_process_path)) {
        remove(file_process_path)
    }
}

main() {
    test_main()
}