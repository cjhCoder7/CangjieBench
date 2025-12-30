class BitStatusUtil {

    public static func add(states: Int64, stat: Int64): Int64 {
        BitStatusUtil.check([states, stat])
        return (states | stat)
    }

    public static func has(states: Int64, stat: Int64): Bool {
        BitStatusUtil.check([states, stat])
        return (states & stat) == stat
    }

    public static func remove(states: Int64, stat: Int64): Int64 {
        BitStatusUtil.check([states, stat])
        if (BitStatusUtil.has(states, stat)) {
            return states ^ stat
        }
        return states
    }

    public static func check(args: Array<Int64>): Unit {
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
