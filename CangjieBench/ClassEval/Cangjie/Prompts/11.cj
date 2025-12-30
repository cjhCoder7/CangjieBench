class BitStatusUtil {

    /*
    This is a utility class that provides methods for manipulating and checking status using bitwise operations.
    */

    public static func add(states: Int64, stat: Int64): Int64 {
        /*
        Add a status to the current status,and check the parameters wheather they are legal.
        :param states: Current status,Int64.
        :param stat: Status to be added,Int64.
        :return: The status after adding the status,Int64.
        >>> BitStatusUtil.add(2,4)
        6

        */
        
    }

    public static func has(states: Int64, stat: Int64): Bool {
        /*
        Check if the current status contains the specified status,and check the parameters wheather they are legal.
        :param states: Current status,Int64.
        :param stat: Specified status,Int64.
        :return: true if the current status contains the specified status,otherwise false,Bool.
        >>> BitStatusUtil.has(6,2)
        true

        */

    }

    public static func remove(states: Int64, stat: Int64): Int64 {
        /*
        Remove the specified status from the current status,and check the parameters wheather they are legal.
        :param states: Current status,Int64.
        :param stat: Specified status,Int64.
        :return: The status after removing the specified status,Int64.
        >>> BitStatusUtil.remove(6,2)
        4

        */
        
    }

    public static func check(args: Array<Int64>): Unit {
        /*
        Check if the parameters are legal, args must be greater than or equal to 0 and must be even,if not,throw Exception.
        If arg is negative, throw Exception("${arg} must be greater than or equal to 0")
        If arg is not even, throw Exception("${arg} not even")
        :param args: Parameters to be checked,Array<Int64>.
        :return: Unit.
        >>> BitStatusUtil.check([2,3,4])
        Traceback (most recent call last):
        ...
        Exception: 3 not even
        */
        for (arg in args) {
            if (arg < 0) {
                throw Exception("${arg} must be greater than or equal to 0")
            }
            if (arg % 2 != 0) {
                throw Exception("${arg} not even")
            }
        }
        
    }
}
