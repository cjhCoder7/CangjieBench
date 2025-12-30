import std.collection.ArrayList
import std.fs.*
import std.io.*
import std.unicode.UnicodeStringExtension

class CSVProcessor {

    public init() {}

    public func read_csv(file_name: String): (ArrayList<String>, ArrayList<ArrayList<String>>) {
        let file = File(Path(file_name), Read)
        let read_string = readString(file)
        let string_array = ArrayList<String>(read_string.split("\n"))
        string_array.removeIf({s: String => s == ""})
        if (string_array.size > 0) {
            let title_array = ArrayList<String>(string_array[0].trim().split(","))
            let data_array = ArrayList<ArrayList<String>>()
            for (i in 1..string_array.size) {
                let data = ArrayList<String>(string_array[i].trim().split(","))
                data_array.add(data)
            }
            return (title_array, data_array)
        } else {
            return (ArrayList<String>(), ArrayList<ArrayList<String>>())
        }
    }

    public func write_csv(data: ArrayList<ArrayList<String>>, file_name: String): Int64 {
        try {
            let file = File(Path(file_name), Write)
            for (i in 0..data.size) {
                var str = String.join(data[i].toArray(), delimiter: ",")
                file.write(str.toArray())
                file.write("\n".toArray())
            }
            file.close()
            return 1
        } catch (e: Exception) {
            return 0
        }
    }

    public func process_csv_data(N: Int64, save_file_name: String): Int64 {
        let (title, data) = this.read_csv(save_file_name)
        let column_data = ArrayList<String>()
        for (row in data) {
            column_data.add(row[N])
        }
        for (i in 0..column_data.size) {
            column_data[i] = column_data[i].toUpper()
        }
        let new_data = ArrayList<ArrayList<String>>()
        new_data.add(title)
        new_data.add(column_data)
        return this.write_csv(new_data, save_file_name.split(".")[0] + '_process.csv')
    }
}
