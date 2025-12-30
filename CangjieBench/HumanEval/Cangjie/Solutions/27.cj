func flip_case(string: String): String {
    /*
    For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
    >>> flip_case('Hello')
    'hELLO'
    */
    var result = ''
    for (char in string.toRuneArray()) {
        if (char.isAsciiLowerCase()) {
            result += char.toAsciiUpperCase().toString()
        } else if (char.isAsciiUpperCase()) {
            result += char.toAsciiLowerCase().toString()
        } else {
            result += char.toString()
        }
    }
    return result
}
