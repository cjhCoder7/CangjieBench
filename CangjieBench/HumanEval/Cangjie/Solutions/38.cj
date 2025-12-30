import std.collection.ArrayList
import std.random.Random


func encode_cyclic(s: String): String {
    /*
    returns encoded string by cycling groups of three characters.
    */
    var ans = ""
    let groups = ArrayList<String>()
    for (i in 0..((s.size + 2) / 3)) {
        groups.add(s[(3 * i)..min((3 * i + 3), s.size)])
    }
    for (group in groups) {
        if (group.size == 3) {
            ans += group[1..] + group[0..1]
        } else {
            ans += group
        }
    }
    return ans
}

func decode_cyclic(s: String): String {
    /*
    takes as input string encoded with encode_cyclic function. Returns decoded string.
    */
    return encode_cyclic(encode_cyclic(s))
}
