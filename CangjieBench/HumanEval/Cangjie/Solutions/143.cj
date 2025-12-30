import std.collection.ArrayList

func words_in_sentence(sentence: String): String {
    /*
    You are given a string representing a sentence,
    the sentence contains some words separated by a space,
    and you have to return a string that contains the words from the original sentence,
    whose lengths are prime numbers,
    the order of the words in the new string should be the same as the original one.

    Example 1:
        Input: sentence = "This is a test"
        Output: "is"

    Example 2:
        Input: sentence = "lets go for swimming"
        Output: "go for"

    Constraints:
        * 1 <= len(sentence) <= 100
        * sentence contains only letters
    */
    var new_lst = ArrayList<String>()
    for (word in sentence.split(" ")) {
        var flg = 0
        if (word.size == 1) {
            flg = 1
        }
        for (i in 2..word.size) {
            if (word.size % i == 0) {
                flg = 1
            }
        }
        if (flg == 0 || word.size == 2) {
            new_lst.add(word)
        }
    }
    var new_str = ""
    for (i in 0..new_lst.size) {
        new_str += new_lst[i]
        if (i != new_lst.size - 1) {
            new_str += " "
        }
    }
    return new_str
}
