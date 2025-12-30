import std.collection.ArrayList

func words_string(s: String): ArrayList<String> {
    /*
    You will be given a string of words separated by commas or spaces. Your task is
    to split the string into words and return an array of the words.
    
    For example:
    words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    */
    if (s.size == 0) {
        return ArrayList<String>()
    }

    let s_list = ArrayList<String>()

    for (letter in s.toRuneArray()) {
        if (letter == r',') {
            s_list.add(" ")
        } else {
            s_list.add(letter.toString())
        }
    }
    var s_string = ""
    for (i in s_list) {
        s_string += i
    }
    return ArrayList<String>(s_string.split(" ", removeEmpty: true))
}
