import std.collection.HashMap
import std.collection.ArrayList
import std.math.round
import std.math.abs
import std.sort.sort

class DataStatistics {

    /*
    This is a class for performing data statistics, supporting to calculate the mean, median, and mode of a given data set.
    */

    public func mean(data: ArrayList<Int64>): Float64 {
        /*
        Calculate the average value of a group of data, accurate to two digits after the Decimal separator
        :param data:ArrayList<Int64>, data list
        :return:Float64, the mean value
        >>> ds = DataStatistics()
        >>> ds.mean(ArrayList<Int64>([1, 2, 3, 4, 5]))
        3.00
        */
        
    }

    public func median(data: ArrayList<Int64>): Float64 {
        /*
        Calculate the median of a group of data, accurate to two digits after the Decimal separator
        :param data:ArrayList<Int64>, data list
        :return:Float64, the median value
        >>> ds = DataStatistics()
        >>> ds.median(ArrayList<Int64>([2, 5, 1, 3, 4]))
        3.00
        */
        
    }

    public func mode(data: ArrayList<Int64>): ArrayList<Int64> {
        /*
        Calculate the mode of a set of data
        :param data:ArrayList<Int64>, data list
        :return:ArrayList<Int64>, the mode
        >>> ds = DataStatistics()
        >>> ds.mode(ArrayList<Int64>([2, 2, 3, 3, 4]))
        [2, 3]
        */
        
    }
}
