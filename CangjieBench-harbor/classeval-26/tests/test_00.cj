import std.collection.ArrayList
import std.fs.*
import std.io.*
import std.unicode.UnicodeStringExtension

func test_read_csv_1() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let file = File(file_path, Write)
    file.write('a,b,c,d\nhElLo,YoU,ME,LoW'.toArray())
    file.close()
    let expected_title = ArrayList<String>(['a', 'b', 'c', 'd'])
    let expected_data = ArrayList<ArrayList<String>>([ArrayList<String>(['hElLo', 'YoU', 'ME', 'LoW'])])
    let csvProcessor = CSVProcessor()
    let (title, data) = csvProcessor.read_csv(file_name)
    if (title != expected_title) {
        throw Exception("Test failed!")
    }
    if (data != expected_data) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

func test_read_csv_2() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let file = File(file_path, Write)
    file.write('1234\nhElLo,YoU,ME,LoW'.toArray())
    file.close()
    let expected_title = ArrayList<String>(['1234'])
    let expected_data = ArrayList<ArrayList<String>>([ArrayList<String>(['hElLo', 'YoU', 'ME', 'LoW'])])
    let csvProcessor = CSVProcessor()
    let (title, data) = csvProcessor.read_csv(file_name)
    if (title != expected_title) {
        throw Exception("Test failed!")
    }
    if (data != expected_data) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

func test_read_csv_3() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let file = File(file_path, Write)
    file.write('title\nhElLo,YoU,ME,LoW'.toArray())
    file.close()
    let expected_title = ArrayList<String>(['title'])
    let expected_data = ArrayList<ArrayList<String>>([ArrayList<String>(['hElLo', 'YoU', 'ME', 'LoW'])])
    let csvProcessor = CSVProcessor()
    let (title, data) = csvProcessor.read_csv(file_name)
    if (title != expected_title) {
        throw Exception("Test failed!")
    }
    if (data != expected_data) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

func test_read_csv_4() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let file = File(file_path, Write)
    file.write('title4\nhElLo,YoU,ME,LoW'.toArray())
    file.close()
    let expected_title = ArrayList<String>(['title4'])
    let expected_data = ArrayList<ArrayList<String>>([ArrayList<String>(['hElLo', 'YoU', 'ME', 'LoW'])])
    let csvProcessor = CSVProcessor()
    let (title, data) = csvProcessor.read_csv(file_name)
    if (title != expected_title) {
        throw Exception("Test failed!")
    }
    if (data != expected_data) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

func test_read_csv_5() {
    let file_name = 'read_test.csv'
    let file_path = Path(file_name)
    let file = File(file_path, Write)
    file.write('title5\nhElLo,YoU,ME,LoW'.toArray())
    file.close()
    let expected_title = ArrayList<String>(['title5'])
    let expected_data = ArrayList<ArrayList<String>>([ArrayList<String>(['hElLo', 'YoU', 'ME', 'LoW'])])
    let csvProcessor = CSVProcessor()
    let (title, data) = csvProcessor.read_csv(file_name)
    if (title != expected_title) {
        throw Exception("Test failed!")
    }
    if (data != expected_data) {
        throw Exception("Test failed!")
    }
    if (exists(file_path)) {
        remove(file_path)
    }
}

main() {
    test_read_csv_1()
    test_read_csv_2()
    test_read_csv_3()
    test_read_csv_4()
    test_read_csv_5()
}
