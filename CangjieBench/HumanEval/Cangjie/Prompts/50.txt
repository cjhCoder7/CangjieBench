import std.random.Random

func encode_shift(s: String): String {
    /*
    returns encoded string by shifting every character by 5 in the alphabet.
    */
    var ret = ""
    for (i in 0..s.size) {
        ret += Rune((s[i] + 5 - 97) % 26 + 97).toString()
    }
    return ret
}

func decode_shift(s: String): String {
    /*
    takes as input string encoded with encode_shift function. Returns decoded string.
    */
    
}
