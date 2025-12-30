import std.collection.ArrayList
import std.convert.Parsable

func specialFilter(nums: ArrayList<Int64>): Int64 {
    /*
    Write a function that takes an array of numbers as input and returns 
    the number of elements in the array that are greater than 10 and both 
    first and last digits of a number are odd (1, 3, 5, 7, 9).
    For example:
    specialFilter(ArrayList<Int64>([15, -73, 14, -15])) => 1 
    specialFilter(ArrayList<Int64>([33, -2, -3, 45, 21, 109])) => 2
    */
    
    var count = 0
    for (num in nums) {
        if (num > 10) {
            let odd_digits = [1, 3, 5, 7, 9]
            let number_as_string = num.toString()
            if (odd_digits.contains(Int64.parse(Rune(number_as_string[0]).toString())) && odd_digits.contains(Int64.parse(Rune(number_as_string[number_as_string.size - 1]).toString()))) {
                count += 1
            }
        }
    }
    return count
}
