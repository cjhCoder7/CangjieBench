import std.collection.HashSet

func same_chars(s0: String, s1: String): Bool {
    /*
    Check if two words have the same characters.
    >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
    true
    >>> same_chars('abcd', 'dddddddabc')
    true
    >>> same_chars('dddddddabc', 'abcd')
    true
    >>> same_chars('eabcd', 'dddddddabc')
    false
    >>> same_chars('abcd', 'dddddddabce')
    false
    >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
    false
    */
    let s0_set = HashSet<Rune>(s0.toRuneArray())
    let s1_set = HashSet<Rune>(s1.toRuneArray())
    return s0_set == s1_set
}
