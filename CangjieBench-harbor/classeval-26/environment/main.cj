import std.collection.ArrayList
import std.fs.*
import std.io.*
import std.unicode.UnicodeStringExtension

class CSVProcessor {

    /*
    This is a class for processing CSV files, including readring and writing CSV data, as well as processing specific operations and saving as a new CSV file.
    */

    public init() {}

    public func read_csv(file_name: String): (ArrayList<String>, ArrayList<ArrayList<String>>) {
        /*
        Read the csv file by file_name, get the title and data from it
        :param file_name: String, name of the csv file
        :return title, data: (ArrayList<String>, ArrayList<ArrayList<String>>), first row is title, the rest is data
        >>> csvProcessor = CSVProcessor()
        >>> csvProcessor.read_csv('read_test.csv')
        (['a', 'b', 'c', 'd'], [['hElLo', 'YoU', 'ME', 'LoW']])
        */

    }

    public func write_csv(data: ArrayList<ArrayList<String>>, file_name: String): Int64 {
        /*
        Write data into a csv file.
        :param file_name: String, name of the csv file
        :return: Int64, if success return 1, or 0 otherwise
        >>> csvProcessor = CSVProcessor()
        >>> data = ArrayList<ArrayList<String>>([ArrayList<String>(['a', 'b', 'c', 'd']), ArrayList<String>(['hElLo', 'YoU', 'ME', 'LoW'])])
        >>> csvProcessor.write_csv(data, 'write_test.csv')
        1
        */

    }

    public func process_csv_data(N: Int64, save_file_name: String): Int64 {
        /*
        Read a csv file into variable title and data.
        Only remain the N th (from 0) column data and Capitalize them, store the title and new data into a new csv file.
        Add '_process' suffix after old file name, as a new file name.
        :param N: Int64, the N th column(from 0)
        :param save_file_name, the name of file that needs to be processed.
        :return:Int64, if success return 1, or 0 otherwise
        >>> csvProcessor = CSVProcessor()
        >>> csvProcessor.read_csv('read_test.csv')
        (['a', 'b', 'c', 'd'], [['hElLo', 'YoU', 'ME', 'LoW']])
        >>> csvProcessor.process_csv_data(0, 'read_test.csv')
        1
        >>> csvProcessor.read_csv('read_test_process.csv')
        (['a', 'b', 'c', 'd'], [['HELLO']])
        */

    }
}
