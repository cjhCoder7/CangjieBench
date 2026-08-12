import std.collection.ArrayList
import std.math.abs

class KappaCalculator {

    /*
    This is a class as KappaCalculator, supporting to calculate Cohen's and Fleiss' kappa coefficient.
    */

    public static func kappa(testData: ArrayList<ArrayList<Int64>>, k: Int64): Float64 {
        /*
        Calculate the cohens kappa value of a k-dimensional matrix
        :param testData: The k-dimensional matrix that needs to calculate the cohens kappa value
        :param k: Int64, Matrix dimension
        :return:float, the cohens kappa value of the matrix
        >>> KappaCalculator.kappa(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([2, 1, 1]), ArrayList<Int64>([1, 2, 1]), ArrayList<Int64>([1, 1, 2])]), 3)
        0.25
        */
        
    }

    public static func fleiss_kappa(testData: ArrayList<ArrayList<Int64>>, N: Int64, k: Int64, n: Int64): Float64 {
        /*
        Calculate the fliss kappa value of an N * k matrix
        :param testData: Input data matrix, N * k
        :param N: Int64, Number of samples
        :param k: Int64, Number of categories
        :param n: Int64, Number of raters
        :return: Float64, fleiss kappa value
        >>> KappaCalculator.fleiss_kappa(ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0, 0, 0, 0, 14]),
        >>>                              ArrayList<Int64>([0, 2, 6, 4, 2]),
        >>>                              ArrayList<Int64>([0, 0, 3, 5, 6]),
        >>>                              ArrayList<Int64>([0, 3, 9, 2, 0]),
        >>>                              ArrayList<Int64>([2, 2, 8, 1, 1]),
        >>>                              ArrayList<Int64>([7, 7, 0, 0, 0]),
        >>>                              ArrayList<Int64>([3, 2, 6, 3, 0]),
        >>>                              ArrayList<Int64>([2, 5, 3, 2, 2]),
        >>>                              ArrayList<Int64>([6, 5, 2, 1, 0]),
        >>>                              ArrayList<Int64>([0, 2, 2, 3, 7])], 10, 5, 14)
        0.20993070442195522
        */
        
    }
}
