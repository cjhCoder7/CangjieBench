func count_upper(s: String): Int64 {
    /*
    Given a string s, count the number of uppercase vowels in even indices.
    
    For example:
    count_upper('aBCdEf') returns 1
    count_upper('abcdefg') returns 0
    count_upper('dBBE') returns 0
    */
    var count = 0
    for (i in 0..s.size:2) {
        if ("AEIOU".contains(Rune(s[i]).toString())) {
            count += 1
        }
    }
    return count
}
