import std.collection.ArrayList
import std.math.abs

class MetricsCalculator {

    /*
    The class calculates precision, recall, F1 score, and accuracy based on predicted and true labels.
    */

    var true_positives: Int64
    var false_positives: Int64
    var false_negatives: Int64
    var true_negatives: Int64

    public init() {
        /*
        Initialize the number of all four samples to 0
        */
        this.true_positives = 0
        this.false_positives = 0
        this.false_negatives = 0
        this.true_negatives = 0
    }

    public func update(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Unit {
        /*
        Update the number of all four samples(true_positives, false_positives, false_negatives, true_negatives)
        :param predicted_labels: ArrayList<Int64>, predicted results
        :param true_labels: ArrayList<Int64>, true labels
        :return: None, change the number of corresponding samples
        >>> mc = MetricsCalculator()
        >>> mc.update(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
        (this.true_positives, this.false_positives, this.false_negatives, this.true_negatives) = (1, 1, 1, 1)
        */
        
    }

    public func precision(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Float64 {
        /*
        Calculate precision
        :param predicted_labels: ArrayList<Int64>, predicted results
        :param true_labels: ArrayList<Int64>, true labels
        :return: Float64
        >>> mc = MetricsCalculator()
        >>> mc.precision(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
        0.5
        */
        
    }

    public func recall(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Float64 {
        /*
        Calculate recall
        :param predicted_labels: ArrayList<Int64>, predicted results
        :param true_labels: ArrayList<Int64>, true labels
        :return: Float64
        >>> mc = MetricsCalculator()
        >>> mc.recall(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
        0.5
        */
        
    }

    public func f1_score(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Float64 {
        /*
        Calculate f1 score, which is the harmonic mean of precision and recall
        :param predicted_labels: ArrayList<Int64>, predicted results
        :param true_labels: ArrayList<Int64>, true labels
        :return: Float64
        >>> mc = MetricsCalculator()
        >>> mc.f1_score(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
        0.5
        */
        
    }

    public func accuracy(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Float64 {
        /*
        Calculate accuracy
        :param predicted_labels: ArrayList<Int64>, predicted results
        :param true_labels: ArrayList<Int64>, true labels
        :return: Float64
        >>> mc = MetricsCalculator()
        >>> mc.accuracy(ArrayList<Int64>([1, 1, 0, 0]), ArrayList<Int64>([1, 0, 0, 1]))
        0.5
        */
        
    }
}

