import std.collection.ArrayList
import std.math.abs

class MetricsCalculator2 {

    /*
    The class provides to calculate Mean Reciprocal Rank (MRR) and Mean Average Precision (MAP) based on input data, where MRR measures the ranking quality and MAP measures the average precision.
    */

    public init() {}

    public static func mrr(data: Any): (Float64, ArrayList<Float64>) {
        /*
        compute the MRR of the input data. MRR is a widely used evaluation index. It is the mean of reciprocal rank.
        :param data: the data must be a tuple, list 0,1,eg.([1,0,...],5).  In each tuple (actual result,ground truth num),ground truth num is the total ground num.
         ([1,0,...],5),
        or list of tuple eg. [([1,0,1,...],5),([1,0,...],6),([0,0,...],5)].
        1 stands for a correct answer, 0 stands for a wrong answer.
        :return: if input data is list, return the recall of this list. if the input data is list of list, return the
        average recall on all list. The second return value is a list of precision for each input.
        >>> MetricsCalculator2.mrr((ArrayList<Int64>([1, 0, 1, 0]), 4))
        >>> MetricsCalculator2.mrr([(ArrayList<Int64>([1, 0, 1, 0]), 4), (ArrayList<Int64>([0, 1, 0, 1]), 4)])
        1.0, [1.0]
        0.75, [1.0, 0.5]
        */
        
    }

    public static func map(data: Any): (Float64, ArrayList<Float64>) {
        /*
        compute the MAP of the input data. MAP is a widely used evaluation index. It is the mean of AP (average precision).
        :param data: the data must be a tuple, list 0,1,eg.([1,0,...],5).  In each tuple (actual result,ground truth num),ground truth num is the total ground num.
         ([1,0,...],5),
        or list of tuple eg. [([1,0,1,...],5),([1,0,...],6),([0,0,...],5)].
        1 stands for a correct answer, 0 stands for a wrong answer.
        :return: if input data is list, return the recall of this list. if the input data is list of list, return the
        average recall on all list. The second return value is a list of precision for each input.
        >>> MetricsCalculator2.map((ArrayList<Int64>([1, 0, 1, 0]), 4))
        >>> MetricsCalculator2.map([(ArrayList<Int64>([1, 0, 1, 0]), 4), (ArrayList<Int64>([0, 1, 0, 1]), 4)])
        0.41666666666666663, [0.41666666666666663]
        0.3333333333333333, [0.41666666666666663, 0.25]
        */
        
    }
}

