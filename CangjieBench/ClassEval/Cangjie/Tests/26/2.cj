func setUp() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let file = File(file_path, Write)
    file.write('a,b,c,d\nhElLo,YoU,ME,LoW,aBc'.toArray())
    file.close()
}

func test_process_csv_data_1() {
    setUp()
    let title = ArrayList<String>(['a', 'b', 'c', 'd'])
    let data = ArrayList<String>(['HELLO'])
    let csvProcessor = CSVProcessor()
    if (csvProcessor.process_csv_data(0, 'read_test.csv') != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv('read_test_process.csv')
    if (read_title != title) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data) {
        throw Exception("Test failed!")
    }
    let file_path = Path('read_test.csv')
    let process_file_path = Path('read_test_process.csv')
    if (exists(file_path)) {
        remove(file_path)
    }
    if (exists(process_file_path)) {
        remove(process_file_path)
    }
}

func test_process_csv_data_2() {
    setUp()
    let title = ArrayList<String>(['a', 'b', 'c', 'd'])
    let data = ArrayList<String>(['YOU'])
    let csvProcessor = CSVProcessor()
    if (csvProcessor.process_csv_data(1, 'read_test.csv') != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv('read_test_process.csv')
    if (read_title != title) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data) {
        throw Exception("Test failed!")
    }
    let file_path = Path('read_test.csv')
    let process_file_path = Path('read_test_process.csv')
    if (exists(file_path)) {
        remove(file_path)
    }
    if (exists(process_file_path)) {
        remove(process_file_path)
    }
}

func test_process_csv_data_3() {
    setUp()
    let title = ArrayList<String>(['a', 'b', 'c', 'd'])
    let data = ArrayList<String>(['ME'])
    let csvProcessor = CSVProcessor()
    if (csvProcessor.process_csv_data(2, 'read_test.csv') != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv('read_test_process.csv')
    if (read_title != title) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data) {
        throw Exception("Test failed!")
    }
    let file_path = Path('read_test.csv')
    let process_file_path = Path('read_test_process.csv')
    if (exists(file_path)) {
        remove(file_path)
    }
    if (exists(process_file_path)) {
        remove(process_file_path)
    }
}

func test_process_csv_data_4() {
    setUp()
    let title = ArrayList<String>(['a', 'b', 'c', 'd'])
    let data = ArrayList<String>(['LOW'])
    let csvProcessor = CSVProcessor()
    if (csvProcessor.process_csv_data(3, 'read_test.csv') != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv('read_test_process.csv')
    if (read_title != title) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data) {
        throw Exception("Test failed!")
    }
    let file_path = Path('read_test.csv')
    let process_file_path = Path('read_test_process.csv')
    if (exists(file_path)) {
        remove(file_path)
    }
    if (exists(process_file_path)) {
        remove(process_file_path)
    }
}

func test_process_csv_data_5() {
    setUp()
    let title = ArrayList<String>(['a', 'b', 'c', 'd'])
    let data = ArrayList<String>(['ABC'])
    let csvProcessor = CSVProcessor()
    if (csvProcessor.process_csv_data(4, 'read_test.csv') != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv('read_test_process.csv')
    if (read_title != title) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data) {
        throw Exception("Test failed!")
    }
    let file_path = Path('read_test.csv')
    let process_file_path = Path('read_test_process.csv')
    if (exists(file_path)) {
        remove(file_path)
    }
    if (exists(process_file_path)) {
        remove(process_file_path)
    }
}

main() {
    test_process_csv_data_1()
    test_process_csv_data_2()
    test_process_csv_data_3()
    test_process_csv_data_4()
    test_process_csv_data_5()
}