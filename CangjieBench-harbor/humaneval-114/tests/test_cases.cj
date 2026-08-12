import std.collection.ArrayList

main() {
    if (minSubArraySum(ArrayList<Int64>([2, 3, 4, 1, 2, 4])) != 1) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([-1, -2, -3])) != -6) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([-1, -2, -3, 2, -10])) != -14) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([-9999999999999999])) != -9999999999999999) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([0, 10, 20, 1000000])) != 0) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([-1, -2, -3, 10, -5])) != -6) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([100, -1, -2, -3, 10, -5])) != -6) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([10, 11, 13, 8, 3, 4])) != 3) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([100, -33, 32, -1, 0, -2])) != -33) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([-10])) != -10) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([7])) != 7) {
        throw Exception("Test Failed!")
    }
    if (minSubArraySum(ArrayList<Int64>([1, -1])) != -1) {
        throw Exception("Test Failed!")
    }
}
