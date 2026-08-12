import std.collection.HashMap
import std.collection.ArrayList
import std.math.abs
import std.math.sqrt
import std.math.log
import std.math.pow

class VectorUtil {

    /*
    The class provides vector operations, including calculating similarity, cosine similarities, average similarity, and IDF weights.
    */

    public static func similarity(vector_1: ArrayList<Float64>, vector_2: ArrayList<Float64>): Float64 {
        /*
        Compute the cosine similarity between one vector and another vector.
        :param vector_1: ArrayList<Float64>, Vector from which similarities are to be computed, expected shape (dim,).
        :param vector_2: ArrayList<Float64>, Vector from which similarities are to be computed, expected shape (dim,).
        :return: Float64, Contains cosine distance between `vector_1` and `vector_2`
        >>> vector_1 = ArrayList<Float64>([1.0, 1.0])
        >>> vector_2 = ArrayList<Float64>([1.0, 0.0])
        >>> VectorUtil.similarity(vector_1, vector_2)
        0.7071067811865475
        */
        
    }

    public static func cosine_similarities(vector_1: ArrayList<Float64>, vectors_all: ArrayList<ArrayList<Float64>>): ArrayList<Float64> {
        /*
        Compute cosine similarities between one vector and a set of other vectors.
        :param vector_1: ArrayList<Float64>, Vector from which similarities are to be computed, expected shape (dim,).
        :param vectors_all: ArrayList<ArrayList<Float64>>, For each row in vectors_all, distance from vector_1 is computed, expected shape (num_vectors, dim).
        :return: ArrayList<Float64>, Contains cosine distance between `vector_1` and each row in `vectors_all`, shape (num_vectors,).
        >>> vector1 = ArrayList<Float64>([1.0, 2.0, 3.0])
        >>> vectors_all = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([4.0, 5.0, 6.0]), ArrayList<Float64>([7.0, 8.0, 9.0])])
        >>> VectorUtil.cosine_similarities(vector1, vectors_all)
        [0.97463185 0.95941195]
        */

    }

    public static func n_similarity(vector_list_1: ArrayList<ArrayList<Float64>>, vector_list_2: ArrayList<ArrayList<Float64>>): Float64 {
        /*
        Compute cosine similarity between two sets of vectors.
        :param vector_list_1: ArrayList<ArrayList<Float64>>
        :param vector_list_2: ArrayList<ArrayList<Float64>>
        :return: Float64, Similarities between vector_list_1 and vector_list_2.
        >>> vector_list1 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([1.0, 2.0, 3.0]), ArrayList<Float64>([4.0, 5.0, 6.0])])
        >>> vector_list2 = ArrayList<ArrayList<Float64>>([ArrayList<Float64>([7.0, 8.0, 9.0]), ArrayList<Float64>([10.0, 11.0, 12.0])])
        >>> VectorUtil.n_similarity(vector_list1, vector_list2)
        0.9897287473881233
        */
        
    }

    public static func compute_idf_weight_dict(total_num: Int64, number_dict: HashMap<String, Float64>): HashMap<String, Float64> {
        /*
        Calculate log(total_num+1/count+1) for each count in number_dict
        :param total_num: Int64
        :param number_dict: HashMap<String, Float64>
        :return: HashMap<String, Float64>
        >>> num_dict = HashMap<String, Float64>([('key1', 0.1), ('key2', 0.5)])
        >>> VectorUtil.compute_idf_weight_dict(2, num_dict)
        {'key1': 1.0033021088637848, 'key2': 0.6931471805599453}
        */
        
    }
}

