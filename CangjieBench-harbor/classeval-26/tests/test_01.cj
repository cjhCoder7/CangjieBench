import std.collection.ArrayList
import std.fs.*
import std.io.*
import std.unicode.UnicodeStringExtension

func test_write_csv_1() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let csvProcessor = CSVProcessor()
    let data = ArrayList<ArrayList<String>>([ArrayList<String>(['a', 'b', 'c', 'd']), ArrayList<String>(['1', '2', '3', '4'])])
    if (csvProcessor.write_csv(data, file_name) != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv(file_name)
    if (read_title != data[0]) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data[1]) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

func test_write_csv_2() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let csvProcessor = CSVProcessor()
    let data = ArrayList<ArrayList<String>>([ArrayList<String>(['aa', 'bb', 'cc', 'dd']), ArrayList<String>(['1', '2', '3', '4'])])
    if (csvProcessor.write_csv(data, file_name) != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv(file_name)
    if (read_title != data[0]) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data[1]) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

func test_write_csv_3() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let csvProcessor = CSVProcessor()
    let data = ArrayList<ArrayList<String>>([ArrayList<String>(['a', 'b', 'c', 'd']), ArrayList<String>(['11', '22', '33', '44'])])
    if (csvProcessor.write_csv(data, file_name) != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv(file_name)
    if (read_title != data[0]) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data[1]) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

func test_write_csv_4() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let csvProcessor = CSVProcessor()
    let data = ArrayList<ArrayList<String>>([ArrayList<String>(['e', 'f', 'g', 'h']), ArrayList<String>(['1', '2', '3', '4'])])
    if (csvProcessor.write_csv(data, file_name) != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv(file_name)
    if (read_title != data[0]) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data[1]) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

func test_write_csv_5() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let csvProcessor = CSVProcessor()
    let data = ArrayList<ArrayList<String>>([ArrayList<String>(['a', 'b', 'c', 'd']), ArrayList<String>(['5', '6', '7', '8'])])
    if (csvProcessor.write_csv(data, file_name) != 1) {
        throw Exception("Test failed!")
    }
    let (read_title, read_data) = csvProcessor.read_csv(file_name)
    if (read_title != data[0]) {
        throw Exception("Test failed!")
    }
    if (read_data[0] != data[1]) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

func test_write_csv_6() {
    let file_name = ''
    let csvProcessor = CSVProcessor()
    if (csvProcessor.write_csv(ArrayList<ArrayList<String>>(), file_name) != 0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_write_csv_1()
    test_write_csv_2()
    test_write_csv_3()
    test_write_csv_4()
    test_write_csv_5()
    test_write_csv_6()
}
