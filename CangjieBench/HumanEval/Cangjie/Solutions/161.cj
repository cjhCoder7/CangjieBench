func solve(s: String): String {
    /*
    You are given a string s.
    if s[i] is a letter, reverse its case from lower to upper or vise versa, 
    otherwise keep it as it is.
    If the string contains no letters, reverse the string.
    The function should return the resulted string.
    Examples
    solve("1234") = "4321"
    solve("ab") = "AB"
    solve("#a@C") = "#A@c"
    */
    var flg = 0
    var idx = 0
    let new_str_list = s.toRuneArray()
    for (i in s.toRuneArray()) {
        if (i.isAsciiLetter()) {
            if (i.isAsciiLowerCase()) {
                new_str_list[idx] = i.toAsciiUpperCase()
            } else {
                new_str_list[idx] = i.toAsciiLowerCase()
            }
            flg = 1
        }
        idx += 1
    }
    var new_s = ""
    for (i in new_str_list) {
        new_s += i.toString()
    }
    if (flg == 0) {
        new_str_list.reverse()
        new_s = ""
        for (i in new_str_list) {
            new_s += i.toString()
        }
        return new_s
    }
    return new_s
}
