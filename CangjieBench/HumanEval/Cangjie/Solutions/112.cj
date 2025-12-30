func reverse_delete(s: String, c: String): (String, Bool) {
    /*
    Task
    We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
    then check if the result string is palindrome.
    A string is called palindrome if it reads the same backward as forward.
    You should return a tuple containing the result string and true/false for the check.
    Example
    For s = "abcde", c = "ae", the result should be ('bcd',false)
    For s = "abcdef", c = "b"  the result should be ('acdef',false)
    For s = "abcdedcba", c = "ab", the result should be ('cdedc',true)
    */
    var str = ""
    for (char in s.toRuneArray()) {
        if (!c.contains(char.toString())) {
            str += char.toString()
        }
    }
    var is_palindrome = true
    for (i in 0..str.size / 2) {
        if (str[i] != str[str.size - 1 - i]) {
            is_palindrome = false
            break
        }
    }
    return (str, is_palindrome)
}
