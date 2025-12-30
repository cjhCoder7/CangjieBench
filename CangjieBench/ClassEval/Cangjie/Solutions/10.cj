import std.collection.HashMap
import std.convert.RadixConvertible

class BinaryDataProcessor {

    var binary_string: String

    public init(binary_string: String) {
        this.binary_string = binary_string
        this.clean_non_binary_chars()
    }

    public func clean_non_binary_chars(): Unit {
        var res = ""
        for (c in this.binary_string.toRuneArray()) {
            if (c == r'1' || c == r'0') {
                res += c.toString()
            }
        }
        this.binary_string = res
    }

    public func calculate_binary_info(): HashMap<String, Float64> {
        let zeroes_count = this.binary_string.count("0")
        let ones_count = this.binary_string.count("1")
        let total_length = this.binary_string.size

        let zeroes_percentage = Float64(zeroes_count) / Float64(total_length)
        let ones_percentage = Float64(ones_count) / Float64(total_length)

        let res = HashMap<String, Float64>()
        res.add('Zeroes' , zeroes_percentage)
        res.add('Ones', ones_percentage)
        res.add('Bit length', Float64(total_length))
        return res
    }

    public func convert_to_ascii(): String {
        var ascii_string = ""
        for (i in 0..this.binary_string.size:8) {
            let byte = this.binary_string[i..i+8]
            let decimal = UInt8.parse(byte, radix: 2)
            ascii_string += Rune(decimal).toString()
        }
        return ascii_string
    }

    public func convert_to_utf8(): String {
        var utf8_string = ""
        for (i in 0..this.binary_string.size:8) {
            let byte = this.binary_string[i..i+8]
            let decimal = UInt8.parse(byte, radix: 2)
            let decimal_arr = [decimal]
            utf8_string += Rune.fromUtf8(decimal_arr, 0)[0].toString()
        }
        return utf8_string
    }
}
