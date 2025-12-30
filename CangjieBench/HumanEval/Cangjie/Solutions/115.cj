import std.collection.ArrayList
import std.math.ceil

func max_fill(grid: ArrayList<ArrayList<Int64>>, capacity: Int64): Int64 {
    /*
    You are given a rectangular grid of wells. Each row represents a single well,
    and each 1 in a row represents a single unit of water.
    Each well has a corresponding bucket that can be used to extract water from it, 
    and all buckets have the same capacity.
    Your task is to use the buckets to empty the wells.
    Output the number of times you need to lower the buckets.

    Example 1:
        Input: 
            grid : ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0,0,1,0]), ArrayList<Int64>([0,1,0,0]), ArrayList<Int64>([1,1,1,1])])
            bucket_capacity : 1
        Output: 6

    Example 2:
        Input: 
            grid : ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0,0,1,1]), ArrayList<Int64>([0,0,0,0]), ArrayList<Int64>([1,1,1,1]), ArrayList<Int64>([0,1,1,1])])
            bucket_capacity : 2
        Output: 5
    
    Example 3:
        Input: 
            grid : ArrayList<ArrayList<Int64>>([ArrayList<Int64>([0,0,0]), ArrayList<Int64>([0,0,0])])
            bucket_capacity : 5
        Output: 0

    Constraints:
        * all wells have the same length
        * 1 <= grid.length <= 10^2
        * 1 <= grid[:,1].length <= 10^2
        * grid[i][j] -> 0 | 1
        * 1 <= capacity <= 10
    */
    var all_sum = 0
    for (arr in grid) {
        var sum = 0
        for (num in arr) {
            sum += num
        }
        all_sum += Int64(ceil(Float64(sum) / Float64(capacity))) 
    }
    return all_sum
}
