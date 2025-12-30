import std.collection.HashMap
import std.collection.ArrayList
import std.math.abs
import std.math.sqrt
import std.math.log
import std.math.pow

class VectorUtil {

    public static func similarity(vector_1: ArrayList<Float64>, vector_2: ArrayList<Float64>): Float64 {
        var dot_product = 0.0
        var norm1 = 0.0
        var norm2 = 0.0
        for (i in 0..vector_1.size) {
            dot_product += vector_1[i] * vector_2[i];
            norm1 += pow(vector_1[i], 2)
            norm2 += pow(vector_2[i], 2)
        }
        var denominator = sqrt(norm1) * sqrt(norm2)
        if (denominator == 0.0) {
            return 0.0
        }
        return dot_product / denominator
    }

    public static func cosine_similarities(vector_1: ArrayList<Float64>, vectors_all: ArrayList<ArrayList<Float64>>): ArrayList<Float64> {

        func dot_product(vector1: ArrayList<Float64>, vector2: ArrayList<Float64>): Float64 {
            var result = 0.0
            for (i in 0..vector1.size) {
                result += vector1[i] * vector2[i]
            }
            return result
        }

        let similarities = ArrayList<Float64>()
        let norm1 = sqrt(dot_product(vector_1, vector_1))
        if (norm1 == 0.0) {
            for (_ in 0..vectors_all.size) {
                similarities.add(0.0)
            }
            return similarities
        }

        for (vector2 in vectors_all) {
            let norm2 = sqrt(dot_product(vector2, vector2))
            if (norm2 == 0.0) {
                similarities.add(0.0)
            } else {
                let similarity = dot_product(vector_1, vector2) / (norm1 * norm2)
                similarities.add(similarity)
            }
        }
        return similarities
    }

    public static func n_similarity(vector_list_1: ArrayList<ArrayList<Float64>>, vector_list_2: ArrayList<ArrayList<Float64>>): Float64 {
        
        func average_vector(vectors: ArrayList<ArrayList<Float64>>): ArrayList<Float64> {
            let avg_vector = ArrayList<Float64>(Array<Float64>(vectors[0].size, repeat: 0.0))
            for (vector in vectors) {
                for (i in 0..vector.size) {
                    avg_vector[i] += vector[i]
                }
            }
            for (i in 0..avg_vector.size) {
                avg_vector[i] = avg_vector[i] / Float64(vectors.size)
            }
            return avg_vector
        }

        if (vector_list_1.isEmpty() || vector_list_2.isEmpty()) {
            throw Exception("At least one of the passed lists is empty.")
        }
        let avg_vector_1 = average_vector(vector_list_1)
        let avg_vector_2 = average_vector(vector_list_2)
        return similarity(avg_vector_1, avg_vector_2)
    }

    public static func compute_idf_weight_dict(total_num: Int64, number_dict: HashMap<String, Float64>): HashMap<String, Float64> {
        let result = HashMap<String, Float64>()
        for ((k, v) in number_dict) {
            let count = v
            let weight = log(Float64(total_num + 1) / (count + 1.0))
            result[k] = weight
        }
        return result
    }
}

