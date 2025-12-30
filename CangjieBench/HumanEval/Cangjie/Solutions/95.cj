import std.collection.HashMap

func check_dict_case(dict: HashMap<String, String>): Bool {
    /*
    Given a dictionary, return true if all keys are strings in lower 
    case or all keys are strings in upper case, else return false.
    The function should return false is the given dictionary is empty.
    Examples:
    check_dict_case(HashMap<String, String>([("a","apple"), ("b","banana")])) should return true.
    check_dict_case(HashMap<String, String>([("a","apple"), ("A","banana"), ("B","banana")])) should return false.
    check_dict_case(HashMap<String, String>([("a","apple"), ("8","banana"), ("a","apple")])) should return false.
    check_dict_case(HashMap<String, String>([("Name","John"), ("Age","36"), ("City","Houston")])) should return false.
    check_dict_case(HashMap<String, String>([("STATE","NC"), ("ZIP","12345")])) should return true.
    */
    func isupper(s: String): Bool {
        var flag = true
        for (c in s.toRuneArray()) {
            if (c.isAsciiUpperCase()) {
                flag = true
            } else {
                flag = false
                break
            }
        }
        return flag
    }
    func islower(s: String): Bool {
        var flag = true
        for (c in s.toRuneArray()) {
            if (c.isAsciiLowerCase()) {
                flag = true
            } else {
                flag = false
                break
            }
        }
        return flag
    }
    if (dict.size == 0) {
        return false
    } else {
        var state = "start"
        for ((k, _) in dict) {
            if (state == "start") {
                if (isupper(k)) {
                    state = "upper"
                } else if (islower(k)) {
                    state = "lower"
                } else {
                    break
                }
            } else if ((state == "upper" && !isupper(k)) || (state == "lower" && !islower(k))) {
                state = "mixed"
                break
            } else {
                break
            }
        }
        return state == "upper" || state == "lower"
    }
}
