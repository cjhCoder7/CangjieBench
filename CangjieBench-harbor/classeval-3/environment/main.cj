import std.collection.ArrayList

class ArrangementCalculator {
    /*
    The Arrangement class provides permutation calculations and selection operations for a given set of data elements.
    */

    let datas: ArrayList<Int64>

    public init(datas: ArrayList<Int64>) {
        /*
        Initializes the ArrangementCalculator object with a list of datas.
        :param datas: ArrayList<Int64>, the data elements to be used for arrangements.
        */

        this.datas = datas
    }

    public static func count(n: Int64, m: Option<Int64>): Int64 {
        /*
        Counts the number of arrangements by choosing m items from n items (permutations).
        If m is not provided or n equals m, returns factorial(n).
        :param n: Int64, the total number of items.
        :param m: Int64, the number of items to be chosen (default=None).
        :return: Int64, the count of arrangements.
        >>> ArrangementCalculator.count(5, Some(3))
        60

        */

    }

    public static func count_all(n: Int64): Int64 {
        /*
        Counts the total number of all possible arrangements by choosing at least 1 item and at most n items from n items.
        :param n: Int64, the total number of items.
        :return: Int64, the count of all arrangements.
        >>> ArrangementCalculator.count_all(4)
        64

        */

    }

    public func select(m: Option<Int64>): ArrayList<ArrayList<Int64>> {
        /*
        Generates a list of arrangements by selecting m items from the internal datas.
        If m is not provided, selects all items.
        :param m: Int64, the number of items to be chosen (default=None).
        :return: ArrayList<ArrayList<Int64>>, a list of arrangements.
        >>> ac = ArrangementCalculator(ArrayList<Int64>([1, 2, 3, 4]))
        >>> ac.select(Some(2))
        [[1, 2], [1, 3], [1, 4], [2, 1], [2, 3], [2, 4], [3, 1], [3, 2], [3, 4], [4, 1], [4, 2], [4, 3]]

        */

    }

    public func select_all(): ArrayList<ArrayList<Int64>> {
        /*
        Generates a list of all arrangements by selecting at least 1 item and at most the number of internal datas.
        :return: ArrayList<ArrayList<Int64>>, a list of all arrangements.
        >>> ac = ArrangementCalculator(ArrayList<Int64>([1, 2, 3]))
        >>> ac.select_all()
        [[1], [2], [3], [1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2], [1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

        */

    }

    public static func factorial(n: Int64): Int64 {
        /*
        Calculates the factorial of a given number.
        :param n: Int64, the number to calculate the factorial.
        :return: Int64, the factorial of the given number.
        >>> ArrangementCalculator.factorial(4)
        24

        */

    }

    private func select_permutations(prefix: ArrayList<Int64>, remaining: ArrayList<Int64>, m: Int64, result: ArrayList<ArrayList<Int64>>): Unit {
        /*
        Recursively generates all permutations of length m by building arrangements from the remaining elements.
        This is a helper function used in `select` to compute permutations via depth-first search.
        The current path (partial permutation) is stored in `prefix`, and `remaining` contains unused elements.
        When the prefix reaches length m, it is added to the result list.
        :param prefix: ArrayList<Int64>, the current partial arrangement being built.
        :param remaining: ArrayList<Int64>, the list of elements not yet used in the current arrangement.
        :param m: Int64, the target length of each permutation.
        :param result: ArrayList<ArrayList<Int64>>, the collection where completed permutations are stored.
        >>> This is an internal recursive helper

        */

        if (prefix.size == m) {
            result.add(ArrayList<Int64>(prefix))
            return
        }
        for (i in 0..remaining.size) {
            let new_prefix = ArrayList<Int64>(prefix)
            new_prefix.add(remaining[i])
            let new_remaining = ArrayList<Int64>(remaining)
            new_remaining.remove(at: i)
            select_permutations(new_prefix, new_remaining, m, result)
        }
    }
}
