import std.collection.ArrayList

func minSubArraySum(nums: ArrayList<Int64>): Int64 {
    /*
    Given an array of integers nums, find the minimum sum of any non-empty sub-array
    of nums.
    Example
    minSubArraySum(ArrayList<Int64>([2, 3, 4, 1, 2, 4])) == 1
    minSubArraySum(ArrayList<Int64>([-1, -2, -3])) == -6
    */
    var max_sum = 0
    var s = 0
    for (num in nums) {
        s += -num
        if (s < 0) {
            s = 0
        }
        max_sum = max(s, max_sum)
    }
    if (max_sum == 0) {
        max_sum = Int64.Min
        for (i in nums) {
            max_sum = max(max_sum, -i)
        }
    }
    var min_sum = -max_sum
    return min_sum
}
