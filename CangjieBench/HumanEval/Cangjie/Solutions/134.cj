func check_if_last_char_is_a_letter(txt: String): Bool {
    /*
    Create a function that returns true if the last character
    of a given string is an alphabetical character and is not
    a part of a word, and false otherwise.
    Note: "word" is a group of characters separated by space.

    Examples:
    check_if_last_char_is_a_letter("apple pie") ➞ false
    check_if_last_char_is_a_letter("apple pi e") ➞ true
    check_if_last_char_is_a_letter("apple pi e ") ➞ false
    check_if_last_char_is_a_letter("") ➞ false 
    */
    if (txt.size == 0) {
        return false
    }
    let txt_list = txt.split(" ")
    let check = txt_list[txt_list.size - 1]
    if (check.size == 1 && Rune(check[0]).isAsciiLetter()) {
        return true
    } else {
        return false
    }
}
