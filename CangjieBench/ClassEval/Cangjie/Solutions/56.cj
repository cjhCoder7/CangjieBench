import std.collection.ArrayList
import std.math.abs

class MetricsCalculator {

    var true_positives: Int64
    var false_positives: Int64
    var false_negatives: Int64
    var true_negatives: Int64

    public init() {
        this.true_positives = 0
        this.false_positives = 0
        this.false_negatives = 0
        this.true_negatives = 0
    }

    public func update(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Unit {
        for (i in 0..predicted_labels.size) {
            if (predicted_labels[i] == 1 && true_labels[i] == 1) {
                this.true_positives += 1
            } else if (predicted_labels[i] == 1 && true_labels[i] == 0) {
                this.false_positives += 1
            } else if (predicted_labels[i] == 0 && true_labels[i] == 1) {
                this.false_negatives += 1
            } else if (predicted_labels[i] == 0 && true_labels[i] == 0) {
                this.true_negatives += 1
            }
        }
    }

    public func precision(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Float64 {
        this.update(predicted_labels, true_labels)
        if (this.true_positives + this.false_positives == 0) {
            return 0.0
        }
        return Float64(this.true_positives) / Float64(this.true_positives + this.false_positives)
    }

    public func recall(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Float64 {
        this.update(predicted_labels, true_labels)
        if (this.true_positives + this.false_negatives == 0) {
            return 0.0
        }
        return Float64(this.true_positives) / Float64(this.true_positives + this.false_negatives)
    }

    public func f1_score(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Float64 {
        this.update(predicted_labels, true_labels)
        let precision = this.precision(predicted_labels, true_labels)
        let recall = this.recall(predicted_labels, true_labels)
        if (precision + recall == 0.0) {
            return 0.0
        }
        return (2.0 * precision * recall) / (precision + recall)
    }

    public func accuracy(predicted_labels: ArrayList<Int64>, true_labels: ArrayList<Int64>): Float64 {
        this.update(predicted_labels, true_labels)
        let total = this.true_positives + this.true_negatives + this.false_positives + this.false_negatives
        if (total == 0) {
            return 0.0
        }
        return Float64(this.true_positives + this.true_negatives) / Float64(total)
    }
}

