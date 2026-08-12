import std.collection.ArrayList
import std.math.round
import std.math.sqrt
import std.math.abs

class DataStatistics2 {

    /*
    This is a class for performing data statistics, supporting to get the sum, minimum, maximum, variance, standard deviation, and correlation of a given dataset.
    */

    let data: ArrayList<Float64>

    public init(data: ArrayList<Float64>) {
        /*
        Initialize Data List
        :param data:ArrayList<Float64>
        */
        this.data = data
    }

    public func get_sum(): Float64 {
        /*
        Calculate the sum of data
        :return:Float64
        >>> ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
        >>> ds2.get_sum()
        10.0
        */
        
    }

    public func get_min(): Float64 {
        /*
        Calculate the minimum value in the data
        :return:Float64
        >>> ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
        >>> ds2.get_min()
        1.0
        */
        
    }

    public func get_max(): Float64 {
        /*
        Calculate the maximum value in the data
        :return:Float64
        >>> ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
        >>> ds2.get_max()
        4.0
        */
        
    }

    public func get_variance(): Float64 {
        /*
        Calculate variance, accurate to two digits after the Decimal separator
        :return:Float64
        >>> ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
        >>> ds2.get_variance()
        1.25
        */
        
    }

    public func get_std_deviation(): Float64 {
        /*
        Calculate standard deviation, accurate to two digits after the Decimal separator
        :return:Float64
        >>> ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
        >>> ds2.get_std_deviation()
        1.12
        */
        
    }

    public func get_correlation(): Float64 {
        /*
        Calculate correlation
        :return:Float64
        >>> ds2 = DataStatistics2(ArrayList<Float64>([1.0, 2.0, 3.0, 4.0]))
        >>> ds2.get_correlation()
        1.0
        */
        
    }
}
