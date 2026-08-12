import std.collection.ArrayList
import std.collection.HashMap
import std.math.abs
import std.sort.sort
import std.math.sqrt

class Statistics3 {

    /*
    This is a class that implements methods for calculating indicators such as median, mode, correlation matrix, and Z-score in statistics.
    */

    public static func median(data: ArrayList<Int64>): Float64 {
        /*
        calculates the median of the given list.
        :param data: the given list, ArrayList<Int64>.
        :return: the median of the given list, Float64.
        >>> Statistics3.median(ArrayList<Int64>([1, 2, 3, 4]))
        2.5

        */
        
    }

    public static func mode(data: ArrayList<Int64>): ArrayList<Int64> {
        /*
        calculates the mode of the given list.
        :param data: the given list, ArrayList<Int64>.
        :return: the mode of the given list, ArrayList<Int64>.
        >>> Statistics3.mode(ArrayList<Int64>([1, 2, 3, 3]))
        [3]

        */
        
    }

    public static func correlation(x: ArrayList<Int64>, y: ArrayList<Int64>): Option<Float64> {
        /*
        calculates the correlation of the given list.
        :param x: the given list, ArrayList<Int64>.
        :param y: the given list, ArrayList<Int64>.
        :return: the correlation of the given list, Option<Float64>.
        >>> Statistics3.correlation(ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]))
        1.0

        */
        
    }

    public static func mean(data: ArrayList<Int64>): Option<Float64> {
        /*
        calculates the mean of the given list.
        :param data: the given list, ArrayList<Int64>.
        :return: the mean of the given list, Option<Float64>.
        >>> Statistics3.mean(ArrayList<Int64>([1, 2, 3]))
        2.0

        */
        
    }

    public static func correlation_matrix(data: ArrayList<ArrayList<Int64>>): ArrayList<ArrayList<Float64>> {
        /*
        calculates the correlation matrix of the given list.
        :param data: the given list, ArrayList<ArrayList<Int64>>.
        :return: the correlation matrix of the given list, ArrayList<ArrayList<Float64>>.
        >>> Statistics3.correlation_matrix(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([1, 2, 3]), ArrayList<Int64>([4, 5, 6]), ArrayList<Int64>([7, 8, 9])]))
        [[1.0, 1.0, 1.0], [1.0, 1.0, 1.0], [1.0, 1.0, 1.0]]

        */
        
    }

    public static func standard_deviation(data: ArrayList<Int64>): Option<Float64> {
        /*
        calculates the standard deviation of the given list.
        :param data: the given list, ArrayList<Int64>.
        :return: the standard deviation of the given list, Option<Float64>.
        >>> Statistics3.standard_deviation(ArrayList<Int64>([1, 2, 3]))
        1.0

        */
        
    }

    public static func z_score(data: ArrayList<Int64>): Option<ArrayList<Float64>> {
        /*
        calculates the z-score of the given list.
        :param data: the given list, ArrayList<Int64>.
        :return: the z-score of the given list, Option<ArrayList<Float64>.
        >>> Statistics3.z_score(ArrayList<Int64>([1, 2, 3, 4]))
        [-1.161895003862225, -0.3872983346207417, 0.3872983346207417, 1.161895003862225]

        */
        
    }
}

